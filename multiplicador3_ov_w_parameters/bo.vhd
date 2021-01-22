LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_signed.all; 

use work.STD_DT.ALL;


ENTITY bo IS
PORT (clk : IN STD_LOGIC;
      cB, cA: IN STD_LOGIC;
      entA, entB : IN std_logic_vector(bits-1 DOWNTO 0);
      Az, Bz : OUT STD_LOGIC;
      saidaP: OUT std_logic_vector((2*bits)-1 DOWNTO 0));
END bo; --clk,cB,cA,entA,entB,Az,Bz,saidaP
 
ARCHITECTURE estrutura OF bo IS
    
    COMPONENT registrador_r IS
    PORT (clk,  reset, carga : IN STD_LOGIC;
          d : IN std_logic_vector((2*bits)-1 DOWNTO 0);
          q : OUT std_logic_vector((2*bits)-1 DOWNTO 0));
    END COMPONENT;
    
    COMPONENT registrador IS
    PORT (clk, carga : IN STD_LOGIC;
          d : IN std_logic_vector(bits-1 DOWNTO 0);
          q : OUT std_logic_vector(bits-1 DOWNTO 0));
    END COMPONENT;
    
	 COMPONENT registrador_8b IS
	 PORT (clk, carga : IN STD_LOGIC;
	  d : IN std_logic_vector((2*bits)-1 DOWNTO 0);
	  q : OUT std_logic_vector((2*bits)-1 DOWNTO 0));
	 END COMPONENT;
	 
    COMPONENT mux2para1 IS
    PORT ( a, b : IN std_logic_vector(bits-1 DOWNTO 0);
        sel: IN STD_LOGIC;
        y : OUT std_logic_vector(bits-1 DOWNTO 0));
    END COMPONENT;
	 
	 COMPONENT mux2para1_8b IS
	 PORT ( a, b : IN std_logic_vector((2*bits)-1 DOWNTO 0);
			sel: IN STD_LOGIC;
         y : OUT std_logic_vector((2*bits)-1 DOWNTO 0));
    END COMPONENT;
	 
    COMPONENT somador IS
    PORT (a, b : IN std_logic_vector((2*bits)-1 DOWNTO 0);
          s : OUT std_logic_vector((2*bits)-1 DOWNTO 0));
    END COMPONENT;
    
    COMPONENT subtrator IS
    PORT (a, b : IN std_logic_vector(bits-1 DOWNTO 0);
          s : OUT std_logic_vector(bits-1 DOWNTO 0));
    END COMPONENT;
    
    COMPONENT igualazero IS
    PORT (a : IN std_logic_vector(bits-1 DOWNTO 0);
			 igual : OUT STD_LOGIC);
    END COMPONENT;
	 
	 COMPONENT igualazero_8b IS
    PORT (a : IN std_logic_vector((2*bits)-1 DOWNTO 0);
			 igual : OUT STD_LOGIC);
	 END COMPONENT;
    SIGNAL saisoma, saimuxP, sairegP, sairegB, concatenaB : std_logic_vector((2*bits)-1 downto 0);
	 SIGNAL saimuxA, saisub, sairegA : std_logic_vector(bits-1 downto 0);
 
BEGIN
concatenaB <= zeros & entB;
	--concatenaB(bits-1 downto 0) <= entB;-- signed(entB);
	--concatenaB((2*bits)-1 downto bits)<= signed(zeros);
		
    muxP: mux2para1_8b port map(saisoma, zeros2, cB, saimuxP); -- a, b, sel, y
    muxA: mux2para1 port map(saisub, entA, cB, saimuxA); -- a, b, sel, y
    regP: registrador_8b port map(clk, cA, saimuxP, sairegP); -- clock, carga, d, q
    regB: registrador_8b port map(clk, cB, concatenaB, sairegB); -- clock, carga, d, q 
    regA: registrador port map(clk, cA, saimuxA, sairegA); -- clock, carga, d, q
    soma: somador port map(sairegP, sairegB, saisoma); -- a, b, s
    sub: subtrator port map(sairegA, valor1, saisub); -- a, b, s
    igualzeroA: igualazero port map(sairegA, Az); -- a, igual
    igualzeroB: igualazero_8b port map(sairegB, Bz); -- b, igual
    saidaP <= sairegP;
    
END estrutura;