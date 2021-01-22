LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bc IS
PORT (Reset, clk, inicio : IN STD_LOGIC;
      Az, Bz : IN STD_LOGIC;
      pronto : OUT STD_LOGIC;
      CA, CB: OUT STD_LOGIC );
END bc;
 
 
ARCHITECTURE estrutura OF bc IS
    TYPE state_type IS (S0,S1,S2,S3,S4);
    SIGNAL state: state_type;
BEGIN
    -- Logica de proximo estado (e registrador de estado)
    PROCESS (clk, Reset)
    BEGIN
        if(Reset = '1') THEN
            state <= S0 ;
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE state IS
                WHEN S0 =>
                    if inicio = '0' then
                        state <= S0;
                    else
                        state <= S1;
                    end if;
                WHEN S1 =>
                    state <= S2;
                WHEN S2 =>
                if Bz = '0' and Az = '0' then
                    state <= S3;
                else
                   -- state <= S0;
						  state <= S4;
                end if;
                WHEN S3 =>
                    state <= S2;
					 WHEN S4 =>
						  state<= S0;
            END CASE;
        END IF;
    END PROCESS;
    
    -- Logica de saida
    PROCESS (state)
    BEGIN
        CASE state IS
            WHEN S0 =>
                CA <= '0';
                CB <= '0';
                pronto <= '0';
                
            WHEN S1 =>
                CA <= '1';
                CB <= '1';
                pronto <= '0';
                
            WHEN S2 =>
                CA <= '0';
                CB <= '0';
                pronto <= '0';
                
            WHEN S3 =>
                CA <= '1';
                CB <= '0';
                pronto <= '0';
			   
				WHEN S4 =>
                CA <= '0';
                CB <= '0';
                pronto <= '1';
                
        END CASE;
    END PROCESS;
END estrutura;


