LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.STD_DT.ALL;

ENTITY igualazero_8b IS
PORT (a : IN std_logic_vector((2*bits)-1 DOWNTO 0);
igual : OUT STD_LOGIC);
END igualazero_8b;

ARCHITECTURE estrutura OF igualazero_8b IS
BEGIN
	igual <= '1' WHEN A = zeros2 ELSE '0';
END estrutura;