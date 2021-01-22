LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.STD_DT.ALL;

ENTITY igualazero IS
PORT (a : IN std_logic_vector(bits-1 DOWNTO 0);
igual : OUT STD_LOGIC);
END igualazero;

ARCHITECTURE estrutura OF igualazero IS
BEGIN
	igual <= '1' WHEN A = zeros ELSE '0';
END estrutura;