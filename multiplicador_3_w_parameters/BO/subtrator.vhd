LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use work.STD_DT.ALL;

ENTITY subtrator IS
PORT (a, b : IN STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
      s : OUT STD_LOGIC_VECTOR(bits-1 DOWNTO 0));
END subtrator;

ARCHITECTURE estrutura OF subtrator IS
BEGIN
		s <= a - b;
END estrutura;
