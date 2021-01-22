LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use work.STD_DT.ALL;

ENTITY somador IS
PORT (a, b : IN STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
      s : OUT STD_LOGIC_VECTOR(bits-1 DOWNTO 0));
END somador;

ARCHITECTURE estrutura OF somador IS
BEGIN
		s <= a + b;
END estrutura;
