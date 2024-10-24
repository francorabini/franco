library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ej1labfpga is 
Port (SW1 : in STD_LOGIC;
			SW2 : in STD_LOGIC;
			SW3 : in STD_lOGIC;
			LED : out STD_LOGIC);
end ej1labfpga;

architecture Behavioral of ej1labfpga is
	signal SIG1: STD_LOGIC;
	signal SIG2: STD_LOGIC;
	signal SIG3: STD_LOGIC;
				
begin
	SIG3 <= not (SW2);
	SIG1 <= (SIG3 xnor SW1);
	SIG2 <= (SIG3 and SW3);
	LED <= (SIG1 or SIG2);
end Behavioral;
	