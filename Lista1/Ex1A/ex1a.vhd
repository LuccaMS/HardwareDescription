library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ex1a is
	Port(
		i_A	:	in	std_logic;
		i_B	:	in	std_logic;
		i_C	:	in	std_logic;
		i_D	:	in	std_logic;
		o_S	:	out std_logic
		);
end ex1a;

architecture behavioral of ex1a is
	
	signal w_A	: std_logic;
	signal w_B	: std_logic;
	signal w_C	: std_logic;
	signal w_D	: std_logic;
	
	begin
	
	w_A	<=	i_A and not i_B;
	w_B	<=	i_C and i_D;
	w_C 	<= not w_B;
	w_D	<=	w_A or w_C;
	
	o_S	<= not w_D;

end behavioral;
		