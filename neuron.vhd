library ieee; 
use ieee.std_logic_1164.all;


entity neuron is 
port( clk, reset: in std_logic; 
	entA, entB: in std_LOGIC_VECTOR (7 downto 0); 
	inicio: in std_logic; 
	pronto: out std_logic; 
	saida: out std_LOGIC_VECTOR (15 downto 0) 
); 
end entity; 


architecture behavior of neuron is
--type linhas is array (l-1 downto 0) of std_logic_vector (8-1 downto 0);

--constant data_ram: linhas:= ("00000000", "00000001", "00000010", "00000011", 
	--									"00000100", "00000101", "00000110", "00000111",
--										"00001000", "00001001", "00001010", "00001011", 
	--									"00001100", "00001101", "00001110", "00001111" );

begin
--process(clk, reset, write_enable)
--begin

--if (reset = '1') then
	--data_ram <= (others => (others => '0'));
--end if;

--if (clk'EVENT AND clk = '1') THEN
	--if (write_enable = '1') then
	--	data_ram(address) <= datain; --memória recebe dados de 'datain'
	--else 
	--	dataout<= data_ram(address); -- saída recebe dados do endereço (address)
--	end if;
--end if;

--end process;

end behavior;