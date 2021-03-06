library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

package parameters is
--function log2_unsigned (x: natural) return natural;

--constant NUM_CLASSIF: integer := 5;
constant bits: integer := 8;
--constant input_bit: integer:= WIDTH_FEAT*2+1;
constant NUM_NODES: integer := 18;
constant LINES_MEM: natural := 16;
constant BITS_ADDR: integer := 6;
type ram_type is array (0 to LINES_MEM-1) of STD_LOGIC_VECTOR(input_bit-1 downto 0);

end STD_DT;


