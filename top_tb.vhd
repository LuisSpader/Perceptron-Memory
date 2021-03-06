library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;	-- para tratamento de arquivos e texto -> file_open...
use work.STD_DT.all;

entity top_tb is
end top_tb;

architecture tb of top_tb is --clk,reset,inicio,we,x1,x2,x3,w1,w2,w3,bias,datain,y
	constant clk_period: time := 20 ns;
	signal clk, reset,inicio,we: std_logic;
	signal x1,x2,x3,w1,w2,w3: std_logic_vector(bits_half downto 0);
	signal bias,datain,y: std_logic_vector(bits-1 downto 0);
	
	--signal A, B: std_logic_vector(3 downto 0);
	--signal S: std_logic_vector(4 downto 0);

begin
	-- conectando os sinais do test bench aos sinais do contador
	UUT: entity work.top port map
		(clk<=clk,reset<=reset,inicio<=inicio,we<=we,x1<=x1,x2<=x2,x3<=x3,w1<=w1,w2<=w2,w3<=w3,bias<=bias,datain<=datain,y<=y);
		
	reset <= '1', '0' after clk_period/2;
	
	-- processo gerador de clock
	clk_gen : process
	constant period: time := 20 ns;
	begin
		clk <= '0';
		wait for period/2; -- 50% do periodo pra cada nivel
		clk <= '1';
		wait for period/2;
	end process;
	

	-- processo para leitura das entradas e escrita das saídas
	file_io: process
		variable read_col_from_input_buf: line; -- buffers de entrada e saída
		file input_buf: text; --text is keyword ->??
		variable write_col_to_output_buf: line;
		file output_buf: text; --text is keyword -->??
		variable val_x1, val_x2, val_x3: std_logic_vector(bits_half-1 downto 0);
		variable val_w1, val_w2, val_w3: std_logic_vector(bits_half-1 downto 0);
		variable val_bias: std_logic_vector(bits-1 downto 0);
		variable val_SPACE: character; -- espaços da leitura de cada linha de entrada
		
		begin
			--arquivo de entrada do tb
			file_open(input_buf, "C:\Users\luisa\Documents\Materias\Ufsc\20201\Lab-EBD_ECL\NN_Neuron\text_files\c__data_df_inputs_bin.txt", read_mode); -- lê arquivo de entrada
			--arquivo de saída do tb
			file_open(output_buf, "C:\Users\luisa\Documents\Materias\Ufsc\20201\Lab-EBD_ECL\NN_Neuron\text_files\saidas_tb.txt", write_mode); --lê arquivos de saída tb
			wait until reset = '0'; -- espera reset desligar
		
			    
	--Loop principal
		while not endfile(input_buf) loop --enquanto arquivo não terminar de ler
		readline(input_buf, read_col_from_input_buf); --lê_linha buffer primeira linha -> escreve na variável

		read(read_col_from_input_buf,val_x1); --pega primeiros n bits
		read(read_col_from_input_buf, val_SPACE);           -- read in the space character

		read(read_col_from_input_buf,val_x2); --
		read(read_col_from_input_buf, val_SPACE);           -- read in the space character

		read(read_col_from_input_buf,val_x3); --
		read(read_col_from_input_buf, val_SPACE);           -- read in the space character

		read(read_col_from_input_buf,val_w1); --
		read(read_col_from_input_buf, val_SPACE);           -- read in the space character			

		read(read_col_from_input_buf,val_w2); --
		read(read_col_from_input_buf, val_SPACE);           -- read in the space character
						
		read(read_col_from_input_buf,val_w3); --
		read(read_col_from_input_buf, val_SPACE);           -- read in the space character

		read(read_col_from_input_buf,val_bias); --
		read(read_col_from_input_buf, val_SPACE);           -- read in the space character

		-- Pass the read values to signals
			x1<= val_x1;
			x2<= val_x2;
			x3<= val_x3;
			w1<= val_w1;
			w2<= val_w2;
			w3<= val_w3;
			bias<= val_bias;

		wait for clk_period;
			write(write_col_to_output_buf, S );	-- what are the parameters?// what is S?
			writeline(output_buf, write_col_to_output_buf);    -- 
		end loop;
		write(write_col_to_output_buf, string'("SIMULACAO CONCLUIDA")); -- só pra confirmar que saiu do loop, tudo ok
		writeline(output_buf, write_col_to_output_buf);    -- 
		file_close(input_buf); --fecha leitura arquivos
		file_close(output_buf); --fecha arquivos
		wait; --sem ele nd funciona; pq?
		end process;
	end tb;