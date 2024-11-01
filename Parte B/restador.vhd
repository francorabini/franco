library ieee;
use ieee. std_logic_1164.all;
entity restador is
	Port (in_a : in STD_LOGIC;
	in_b : in STD_LOGIC;
	in_borrin : STD_LOGIC;
	clk : in STD_LOGIC;
	o_borrout : out STD_LOGIC;
	o_resta : out STD_LOGIC);
end restador;

architecture Behavioral of restador is

component FF_D
		port(D,CLOCK: in std_logic;
				Q: out std_logic);
		end component;
	signal a,b,borrin,borrout,resta: std_logic;

begin
		resta <= (a xor b xor borrin);
		borrout <= ((not a) and b) or ((not a) and borrin) or (b and borrin);  
		D1: FF_D port map (in_a,clk,a);
		D2: FF_D port map (in_b,clk,b);
		D3: FF_D port map (in_borrin,clk,borrin);
		D4: FF_D port map (borrout,clk,o_borrout);
		D5: FF_D port map (resta,clk,o_resta);
		
	end Behavioral;
	
	