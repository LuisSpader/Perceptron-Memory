LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_signed.all; 
use ieee.numeric_std.all;
use ieee.math_real.all;

--use work.HELLOPackage.all;

--type WORD_ARRAY_type is array (n_input-1 downto 0) of signed(input_bit-1 downto 0);

entity neuron_basic_2 is 
generic (input_bit:integer:=8; output_bit:integer:=8;	 n_input:integer:=3);
port( --clk, reset: in std_logic; 
	x1,x2,x3: in signed(n_input-1 downto 0); --signal
	w1,w2,w3: in signed(n_input-1 downto 0); --weighting
	bias: in signed(input_bit-1 downto 0) ; -- offset
	--pronto: out std_logic; --done flag
	z: out signed(output_bit-1 downto 0) --output signal result
); 
end entity; 

architecture behavior of neuron_basic_2 is
	signal sum : signed(input_bit-1 downto 0);
	signal sigmoid, tanh: real;-- signed(input_bit-1 downto 0);
	--signal exp : 2.71828182846;
	constant exp : integer:= 271828182846;
	signal sx1, sx2, sx3, sw1, sw2, sw3: signed(input_bit-1 downto 0);
	
begin
--exp<= 2.71828182846;
sx1<=x1;
sx2<=x2;
sx3<=x3;
sw1<=w1;
sw2<=w2;
sw3<=w3;

sum <= signed(signed(sx1)*signed(sw1)); --+ unsigned(x2*w2) + unsigned(x3*w3) + unsigned(bias);
tanh<= 1-(exp**(-2*sum))/(1+(exp**(-2*sum)));

z<= sigmoid;
--z<= tanh;
end behavior;
