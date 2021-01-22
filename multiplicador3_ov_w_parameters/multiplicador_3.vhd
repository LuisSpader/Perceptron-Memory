library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use work.STD_DT.ALL;

entity multiplicador_3 is 

port( clk, reset: in std_logic; 
		entA, entB: in std_logic_vector (bits-1 downto 0); 
		inicio: in std_logic; 
		pronto: out std_logic; 
		saida: out std_logic_vector ((2*bits)-1 downto 0) 
); 

end entity; 
 

architecture bhv of multiplicador_3 is 
component bo is 
port (clk : IN STD_LOGIC; 
      cB, cA: IN STD_LOGIC; 
      entA, entB : IN std_logic_vector(bits-1 DOWNTO 0); 
      Az, Bz : OUT STD_LOGIC; 
      saidaP: OUT std_logic_vector((2*bits)-1 DOWNTO 0)); 
end component; 


component bc is 
port (Reset, clk, inicio : IN STD_LOGIC; 
      Az, Bz : IN STD_LOGIC; 
      pronto : OUT STD_LOGIC; 
      CA, CB : OUT STD_LOGIC ); 
end component; 


signal cargaA, cargaB, az, bz : std_logic; 
begin 

	BlocoOperativo: bo port map (clk , cargaB, cargaA, entA, entB, az, bz, saida);-- clk, cB, cA, entA, entB, Az, Bz, saidaP 
   BlocoControle: bc port map (reset, clk, inicio, az, bz, pronto, cargaA, cargaB); 

end architecture; 