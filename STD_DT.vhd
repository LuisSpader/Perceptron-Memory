library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


package STD_DT is
function log2_unsigned (x: natural) return natural;

--constant NUM_CLASSIF: integer := 5;
constant n_inputs: integer := 3;
constant bits: integer := 8;
constant bits_half: integer := (bits/2);
constant bits_div: integer := 2*bits;
constant ones: std_logic_vector (bits-1 downto 0):=(others => '1'); --"0000..."
constant ones2: std_logic_vector ((bits*2)-1 downto 0):=(others => '1'); --"0000..."
constant zero_ones_2x: std_logic_vector ((bits*2)-1 downto 0):=((bits) => '1', others => '0'); --256
--constant zero_ones_2x: std_logic_vector ((bits*2)-1 downto 0):=	"0000000100000000"; --256
constant zeros: std_logic_vector (bits-1 downto 0):=(others => '0'); --"0000..."
constant zeros2: std_logic_vector ((bits*2)-1 downto 0):=(others => '0'); --"0000..."
constant valor1: std_logic_vector (bits-1 downto 0):=(0=>'1',others => '0'); --"0000..."
constant clk_period: time := 20 ns;

--constant input_bit: integer:= WIDTH_FEAT*2+1;
--constant dx : std_logic_vector(bits-1 downto 0);
constant LINES_MEM: natural := 256;
constant BITS_ADDR: integer := 6;
--type ram_type is array (0 to LINES_MEM-1) of STD_LOGIC_VECTOR(bits-1 downto 0);
type ram_type is array (0 to (LINES_MEM-1)) of std_logic_vector(bits-1 downto 0);

end STD_DT;

package body STD_DT is

function log2_unsigned (x: natural) return natural is
	variable temp: natural := x;
	variable n: natural := 0;
	begin
		if temp = 1 then
			return n;
		else
			while temp > 1 loop
				temp := temp / 2;
				n := n + 1;
			end loop;
		end if;
		return n;
end function log2_unsigned;

end STD_DT;
