LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_signed.all; 
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.STD_DT.ALL;

entity sum is 
--generic (input_bit:integer:=8; output_bit:integer:=8;	 n_input:integer:=3);
port( --clk, reset: in std_logic; 
		x1,x2,x3: in signed(input_bit-1 downto 0); --signal
		w1,w2,w3: in signed(input_bit-1 downto 0); --weighting
		bias: in signed(input_bit-1 downto 0) ; -- offset
		--pronto: out std_logic; --done flag
		output: out signed(output_bit-1 downto 0) --output signal result
); 
end entity; 

architecture behavior of sum is
	signal sum_all : signed((input_bit+input_bit)-1 downto 0);
	signal sdx,n : signed(input_bit-1 downto 0);
	constant dx : real:= 0.046875;
	--signal sx1, sx2, sx3, sw1, sw2, sw3: signed(input_bit-1 downto 0);
	
begin

sum_all <= ((x1)*(w1))+((x2)*(w2))+((x3)*(w3)) + bias;
output<= sum_all(input_bit-1 downto 0);

end behavior;
