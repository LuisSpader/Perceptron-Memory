library ieee;
use ieee.numeric_std.all;
--use ieee.math_real.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_1164.all;
use work.STD_DT.ALL;

entity top_no_components is 
port( clk, reset, we: in std_logic; 
	x1,x2,x3: in std_logic_vector(bits_half-1 downto 0); --signal
	w1,w2,w3: in std_logic_vector(bits_half-1 downto 0); --weighting
	bias: in std_logic_vector(bits-1 downto 0) ; -- offset
	
	datain: in std_logic_vector(bits-1 downto 0);-- for writing in RAM
		y: out std_logic_vector(bits-1 downto 0); --output signal result
	
	sum_result_out,RAM_out: out std_logic_vector((bits)-1 downto 0);
	spronto_sum_out: out std_logic;
	mult_result_out, div_result_out: out std_logic_vector((bits*2)-1 downto 0);
	inicio_mult, pronto_mult,pronto_div, pronto_geral: out std_logic
	
); --clk,reset,inicio,we,x1,x2,x3,w1,w2,w3,bias,datain,y,sum_result_out,RAM_out,spronto_sum_out,mult_result_out, div_result
end entity; 

architecture behavior of top_no_components is
--COMPONENTS	

component multiplicador_3 is
port (clk, reset: in std_logic; 
		entA, entB: in std_logic_vector (bits-1 downto 0); 
		inicio: in std_logic; 
		pronto: out std_logic; 
		saida: out std_logic_vector ((2*bits)-1 downto 0) );--clk, reset,entA, entB,inicio,pronto,saida
end component;

component divisor is
port (clk : IN STD_LOGIC;
      reset, inicio: IN STD_LOGIC;
      entA, entB : IN std_logic_vector(bits_div-1 DOWNTO 0);
      pronto, erro : OUT STD_LOGIC;
      quoc, resto, conteudoA, conteudoB : OUT std_logic_vector(bits_div-1 DOWNTO 0));--clk,reset,inicio,entA,entB,pronto,erro,quoc,resto,conteudoA,conteudoB
end component;

component sum is
port ( clk, reset, we: in std_logic; 
		x1,x2,x3: in std_logic_vector(bits_half-1 downto 0); --signal
		w1,w2,w3: in std_logic_vector(bits_half-1 downto 0); --weighting
		bias: in std_logic_vector(bits-1 downto 0) ; -- offset
		pronto: out std_logic; --done flag
		output: out std_logic_vector(bits-1 downto 0)); --output signal result
END component;

component mem is
port (RST: in std_logic;
		CLK: in std_logic;
		we: in std_logic; --write enable
		address: in std_logic_vector(bits-1 downto 0);
		datain: in std_logic_vector(bits-1 downto 0);
		dataout: out std_logic_vector(bits-1 downto 0));
END component;

--SIGNALS
	--constant dx : real:= 0.046875;
	signal sum_result, RAM_output, mem_address: std_logic_vector((bits)-1 downto 0);
	signal mult_result, div_result: std_logic_vector((bits*2)-1 downto 0);
	signal sprontom,sprontod,spronto_sum,serrod, siniciom: std_logic; --spronto não está sendo lido por enquanto
	signal sresto, sconteudoA, sconteudoB: std_logic_vector(bits_div-1 downto 0); --sem serem lidos
--LOGIC BEGIN
begin

--sum_all: sum PORT MAP (x1,x2,x3,w1,w2,w3,bias,sum_result);	--x1,x2,x3,w1,w2,w3,bias,output
--multiplicacao: multiplicador_3_8bit PORT MAP (clk,reset,sum_result,dx,inicio,spronto,mult_result); --clk, reset,entA, entB,inicio,pronto,saida
--memory: mem PORT MAP (reset,clk,we,mult_result,datain,RAM_output);	--rst,clk,we,address,datain,dataout

--PARA ALTERAR O QUE É ESCRITO NO ENDEREÇO PARA LEITURA OU ESCRITA DA MEMÓRIA
process (mem_address, sum_result, bias, we)
begin
	if (we = '1') then
		mem_address <= bias; --NA ESCRITA O ENDEREÇO NÃO VEM DO CÁLCULO DA SOMA_PONDERADA E SIM DO ARQUIVO_TEXTO
	else
		mem_address <= sum_result; --já na leitura de dados de entrada xi e wi, o endereço para cálculo sigmoid vem da soma_ponderada
	end if;
end process;


sum_all: sum PORT MAP (clk,reset,we,x1,x2,x3,w1,w2,w3,bias,spronto_sum,sum_result);	--x1,x2,x3,w1,w2,w3,bias,output
memory: mem PORT MAP (reset,clk,we,mem_address,datain,RAM_output);	--rst,clk,we,address,datain,dataout
mult_result<= std_logic_vector(unsigned(sum_result) * unsigned(RAM_output));
div_result<= std_logic_vector(unsigned(mult_result)/unsigned(zero_ones_2x));

--multiplicacao: multiplicador_3 PORT MAP (clk,reset,sum_result,RAM_output,siniciom,sprontom,mult_result); --clk, reset,entA, entB,inicio,pronto,saida
--divisao: divisor PORT MAP (clk,reset,sprontom,mult_result,zero_ones_2x,sprontod,serrod,div_result,sresto, sconteudoA, sconteudoB); --clk,reset,inicio,entA,entB,pronto,erro,quoc,resto,conteudoA,conteudoB

spronto_sum_out<= spronto_sum;
sum_result_out<= sum_result;
RAM_out<= RAM_output;
mult_result_out<= mult_result;
div_result_out<= div_result;

---sinais analise
inicio_mult<= siniciom;
pronto_mult<= sprontom;
pronto_div<= sprontod;


---------WILL BE USED WHEN SIGNED---
--if ((sum_result< std_logic_vector(to_unsigned((-7),bits)))) then -- caso (sum_result < -7) ; y=0;
	--y<= std_logic_vector(to_unsigned(0,bits));
	process (sum_result,reset,clk,datain,RAM_output,siniciom,sprontom,mult_result,sprontod,serrod,div_result,sresto,sconteudoA,sconteudoB)
	begin
	
	if(reset = '1') then	
		serrod<= '0';
		siniciom <= '0';
		sresto<= (OTHERS => '0');
		sconteudoA<= (OTHERS => '0');
		sconteudoB<= (OTHERS => '0');
		pronto_geral<= '0';
		
	elsif clk'event and clk = '1' then
		if spronto_sum = '1' then
			if ((sum_result> std_logic_vector(to_unsigned(135,bits))) or (sum_result< std_logic_vector(to_unsigned(121,bits)))) then --caso (sum_result > 7), y= sum_result
			--if ((sum_result> (to_unsigned(7,bits))) or (sum_result< (to_unsigned(-7,bits)))) then --caso (sum_result > 7), y= sum_result
				--y<= (unsigned(sum_result));
				if(sum_result> std_logic_vector(to_unsigned(135,bits))) then
					y<= std_logic_vector(signed(sum_result));
					pronto_geral<= '1', '0' after clk_period/2;
				else
					y<= zeros;
					pronto_geral<= '1', '0' after clk_period/2;
				end if;
				
				--siniciom<= '1';
				--y<= std_logic_vector(signed(sum_result));
				
			else --when (-7 <= sum_result <= 7)	
				siniciom <= '1';
				--if (sprontom = '1') then
					--if (sprontod ='1') then
						--y<= (unsigned(div_result(bits-1 downto 0)));
						y<= std_logic_vector(unsigned(div_result(bits-1 downto 0)));
						pronto_geral<= '1', '0' after clk_period/2;
						
					--end if; --end if sprontd
			--	end if; --end if sprontm
				
			end if; -- end if sum_result
		end if; -- end if spronto_sum
	end if; --end if reset
	end process;

end behavior;
