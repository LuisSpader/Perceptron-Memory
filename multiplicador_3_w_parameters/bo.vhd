LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use work.STD_DT.ALL;

ENTITY bo IS
PORT (clk : IN STD_LOGIC;
      cB, cA: IN STD_LOGIC;
      entA, entB : IN STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
      Az, Bz : OUT STD_LOGIC;
      saidaP: OUT STD_LOGIC_VECTOR(bits-1 DOWNTO 0));
END bo;

ARCHITECTURE estrutura OF bo IS
	
	--COMPONENT registrador_r IS
	--PORT (clk,  reset, carga : IN STD_LOGIC;
		--  d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  --q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	--END COMPONENT;
	
	COMPONENT registrador IS
	PORT (clk, carga : IN STD_LOGIC;
		  d : IN STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
		  q : OUT STD_LOGIC_VECTOR(bits-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT mux2para1 IS
	PORT ( a, b : IN STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
        sel: IN STD_LOGIC;
        y : OUT STD_LOGIC_VECTOR(bits-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT somador IS
	PORT (a, b : IN STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
		  s : OUT STD_LOGIC_VECTOR(bits-1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT subtrator IS
	PORT (a, b : IN STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
		  s : OUT STD_LOGIC_VECTOR(bits-1 DOWNTO 0));
	END COMPONENT;
	
   COMPONENT igualazero IS
	PORT (a : IN STD_LOGIC_VECTOR(bits-1 DOWNTO 0);
        igual : OUT STD_LOGIC);
	END COMPONENT;
		
	SIGNAL saisoma, saimuxP, saisub, saimuxA, sairegP, sairegB, sairegA : STD_LOGIC_VECTOR(bits-1 downto 0);

BEGIN

	muxP: mux2para1 port map(saisoma, "00000000", cB, saimuxP); -- a, b, sel, y
	muxA: mux2para1 port map(saisub, entA, cB, saimuxA); -- a, b, sel, y
	regP: registrador port map(clk, cA, saimuxP, sairegP); -- clock, carga, d, q
	regB: registrador port map(clk, cB, entB, sairegB); -- clock, carga, d, q 
	regA: registrador port map(clk, cA, saimuxA, sairegA); -- clock, carga, d, q
	--regmult: registrador port map(clk, cmult, sairegP, mult); -- clock, carga, d, q
	soma: somador port map(sairegP, sairegB, saisoma); -- a, b, s
	sub: subtrator port map(sairegA, "00000001", saisub); -- a, b, s
	igualzeroA: igualazero port map(sairegA, Az); -- a, igual
	igualzeroB: igualazero port map(sairegB, Bz); -- b, igual
	saidaP <= sairegP;
	
END estrutura;
