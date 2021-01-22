LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.STD_DT.ALL;

ENTITY registrador_r IS
PORT (clk, reset, carga : IN STD_LOGIC;
	  d : IN std_logic_vector(bits-1 DOWNTO 0);
	  q : OUT std_logic_vector(bits-1 DOWNTO 0));
END registrador_r;

ARCHITECTURE estrutura OF registrador_r IS
BEGIN
	PROCESS(clk, reset)
	BEGIN
		IF(reset = '1') THEN
			q <= zeros;
		ELSIF(clk'EVENT AND clk = '1' AND carga = '1') THEN
			q <= d;
		END IF;
	END PROCESS;
END estrutura;