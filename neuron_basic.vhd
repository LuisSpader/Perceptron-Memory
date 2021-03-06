LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_signed.all; 
use ieee.numeric_std.all;
 

entity neuron_basic is 
generic (input : integer := 8; output : integer := 32);
port( --clk, reset: in std_logic; 
	x1,x2,x3	: in std_logic_vector (input-1 downto 0); --signal
	w1,w2,w3: in std_logic_vector (input-1 downto 0); --weighting
	bias: in std_logic_vector (input-1 downto 0); -- offset
	--pronto: out std_logic; --done flag
	z: out std_logic_vector (input-1 downto 0) --output signal result
); 
end entity; 

architecture behavior of neuron_basic is
	signal sum : std_logic_vector(input-1 downto 0);
	signal sigmoid, tanh: std_logic_vector(input-1 downto 0);
	--signal exp : 2.71828182846;
	constant exp : real := 2.71828182846;
begin

sum <= (x1*w1) + (x2*w2) + (x3*w3) + bias;
sigmoid<= 1/(1+(exp**(-1*sum)));
tanh<= 1-(exp**(-2*sum))/(1+(exp**(-2*sum)));

z<= sigmoid;
--z<= tanh;
end behavior;
