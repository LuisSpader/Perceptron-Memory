library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.STD_DT.ALL;

entity mem is
Port(	RST: in STD_LOGIC;
		CLK: in STD_LOGIC;
		we: in STD_LOGIC; --write enable
		address: in std_logic_vector(bits-1 downto 0); 
		datain: in std_logic_vector(bits-1 downto 0);
		dataout: out std_logic_vector(bits-1 downto 0)
	);
end mem;

architecture Behavioral of mem is

signal ram: ram_type;
signal read_address: std_logic_vector(bits-1 downto 0);
signal x: natural:= 0;

begin

process(RST, CLK, we)
begin
	if(RST = '1' and x = 0 ) then -- se reset = 1
		--for i in (-LINES_MEM/2) to ((LINES_MEM/2) - 1) loop --loop de 0 a 63 (LINES_MEM)
		for i in 0 to ((LINES_MEM) - 1) loop --loop de 0 a 63 (LINES_MEM)
			ram(i) <= (OTHERS => '0'); --zera RAM
			x<= x+1;
			--dataout <= (OTHERS => '0');
		end loop;
		
	elsif(CLK'event and CLK = '1') then --se tem evento de clock
		if(we = '1') then --write enable =1 
			ram(to_integer(unsigned(address))) <= datain; --escreve datain na RAM
			--dataout <= (OTHERS => '0');
		else
			read_address <= address;-- we=0, endereço de leitura recebe entrada (address)
			--dataout <= ram(to_integer(unsigned(read_address)));
		end if;
	end if;
end process;

dataout <= ram(to_integer(unsigned(read_address)));
end Behavioral;
