LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.STD_DT.ALL;

entity sum is 
--generic (input_bit:integer:=8; output_bit:integer:=8;	 n_input:integer:=3);
port( clk, reset, we: in std_logic; 
		x1,x2,x3: in std_logic_vector(bits_half-1 downto 0); --signal
		w1,w2,w3: in std_logic_vector(bits_half-1 downto 0); --weighting
		bias: in std_logic_vector(bits-1 downto 0) ; -- offset
		pronto: out std_logic; --done flag
		output: out std_logic_vector(bits-1 downto 0) --output signal result
); 
end entity; 

architecture behavior of sum is
	signal sum_all : std_logic_vector((bits)-1 downto 0);
	--signal sdx,n : std_logic_vector(bits-1 downto 0);
	--constant dx : real:= 0.046875;
	signal sx1, sx2, sx3, sw1, sw2, sw3: std_logic_vector(bits_half-1 downto 0);
	signal sbias: std_logic_vector(bits-1 downto 0);
	
begin
sx1<= x1;
sx2<= x2;
sx3<= x3;
sw1<= w1;
sw2<= w2;
sw3<= w3;
sbias<= bias;

process(reset, clk, we)
begin
	if(reset = '1') then
			sum_all<= (OTHERS => '0'); 
			pronto <= '0';
			
	else
		if(clk'event and clk = '1') then --se tem evento de clock
		if(we = '0') then --write enable =1 
			--sum_all <= std_logic_vector(unsigned(unsigned(sx1)*unsigned(sw1))+unsigned(unsigned(sx2)*unsigned(sw2))+unsigned(unsigned(sx3)*unsigned(sw3)) + unsigned(sbias));
			sum_all <= std_logic_vector((unsigned(sx1)*unsigned(sw1))+(unsigned(sx2)*unsigned(sw2))+(unsigned(sx3)*unsigned(sw3)) + unsigned(sbias));
			output<= sum_all;
			pronto <= '1';
		end if;
	end if;
	end if;
end process;

--sum_all <= ((x1)*(w1))+((x2)*(w2))+((x3)*(w3)) + bias;
end behavior;
