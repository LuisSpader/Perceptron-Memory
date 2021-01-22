LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
use work.STD_DT.ALL;

ENTITY somador IS
PORT (a, b : IN std_logic_vector((2*bits)-1 DOWNTO 0);
      s : OUT std_logic_vector((2*bits)-1 DOWNTO 0));
END somador;

ARCHITECTURE estrutura OF somador IS
BEGIN
		s <= a + b;
END estrutura;