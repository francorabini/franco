library ieee;
use ieee.std_logic_1164.all;

entity templateD is

	port(
		clk		 : in	std_logic;
		input	 : in	std_logic;
		reset	 : in	std_logic;
		output	 : out	std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of templateD is

	type state_type is (A, B, C, D, E, F, G);

	signal state : state_type;

begin

	process (clk, reset)
	begin
		if reset = '1' then
			state <= A;
		elsif (rising_edge(clk)) then
			case state is
				when A =>
					if input = '1' then
						state <= E;
					else
						state <= B;
					end if;
				when B=>
					if input = '1' then
						state <= C;
					else
						state <= C;
					end if;
				when C=>
					if input = '1' then
						state <= F;
					else
						state <= D;
					end if;
				when D =>
					if input = '1' then
						state <= A;
					else
						state <= A;
					end if;
				when E => 
					if input = '1' then
						state <= G;
					else
						state <= G;
					end if;
				when F =>
					if input = '1' then
						state <= A;
					else
						state <= A;
					end if;
				when G =>
					if input = '1' then
						state <= C;
					else
						state <= C;
					end if;
				
			end case;
		end if;
	end process;


	process (state)
	begin
		case state is
			when A =>
				output <= "0000";
			when B =>
				output <= "0110";
			when C =>
				output <= "1111";
			when D =>
				output <= "1001";
			when E =>
				output <= "1000";
			when F =>
				output <= "1110";
			when G =>
				output <= "1100";
		end case;
	end process;

end rtl;
