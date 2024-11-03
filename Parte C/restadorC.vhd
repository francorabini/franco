library ieee;
use ieee. std_logic_1164.all;

entity restadorC is
	Port (a : in std_logic;
	b : in std_logic;
	borrin : in std_logic;
	borrout : out std_logic;
	resta : out std_logic);
end restadorC;

architecture Behavioral of restadorC is
begin
		resta <= (a xor b xor borrin);
		borrout <= ((not a) and b) or ((not a) and borrin) or (b and borrin);  
end Behavioral;