library ieee;
use ieee.std_logic_1164.all;
use work.parameters.all;

Entity tb_m3_8b is -- entidade vazia 
end tb_m3_8b;

architecture Multi of tb_m3_8b  is
    signal clk, reset, inicio, pronto : std_logic;  -- 
    signal entA, entB: std_logic_vector(bits-1 downto 0);  -- 
	 signal saida  : std_logic_vector((2*bits)-1 downto 0);  -- 
begin
    -- connecting testbench signals with testbanch_multi1
    UUT : entity work.multiplicador_3 port map (clk  => clk, reset => reset, inicio=> inicio, pronto=>pronto,entA  => entA , entB  => entB, saida=>saida);

    -- inputs
    entA <= "00000000", "11111111" after 20 ns;     --, 0010 after 20 ns;
    entB  <= "00000000", "11111111" after 20 ns;    --, 0110 after 20 ns;
    reset <= '1', '0' after 10 ns;
    inicio <= '1', '0' after 60 ns;

Multi : process
constant period: time := 20 ns;
begin
	clk <= '0';
	wait for period/2;
	clk <= '1';
	wait for period/2;
end process;
       
end Multi ;

