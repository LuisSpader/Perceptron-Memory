LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_signed.all; 
use ieee.numeric_std.all;
use ieee.math_real.all;

--use work.HELLOPackage.all;

--type WORD_ARRAY_type is array (n_input-1 downto 0) of signed(input_bit-1 downto 0);

entity neuron_without_memory is 
generic (input_bit:integer:=8; output_bit:integer:=8;	 n_input:integer:=3);
port( --clk, reset: in std_logic; 
	x1,x2,x3: in signed(input_bit-1 downto 0); --signal
	w1,w2,w3: in signed(input_bit-1 downto 0); --weighting
	bias: in signed(input_bit-1 downto 0) ; -- offset
	--pronto: out std_logic; --done flag
	address: out signed(output_bit-1 downto 0) --output signal result
); 
end entity; 

architecture behavior of neuron_without_memory is
	signal sum : signed((input_bit+input_bit)-1 downto 0);
	signal s,sdx,n : signed(input_bit-1 downto 0);
	constant dx : real:= 0.046875;
	--signal sx1, sx2, sx3, sw1, sw2, sw3: signed(input_bit-1 downto 0);
	
begin

sum <= ((x1)*(w1))+((x2)*(w2))+((x3)*(w3)) + bias;
s<= sum(input_bit-1 downto 0);
--
--sdx<= (s/dx);
--n<= sdx(input_bit); 	-- MSB

--address<=n;

end behavior;
