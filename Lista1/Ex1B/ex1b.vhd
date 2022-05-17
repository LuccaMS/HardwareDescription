library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity ex1b is
	Port(
		i_A	: in	std_logic;
		i_B	: in	std_logic;
		i_C	: in	std_logic;
		i_D	: in	std_logic;
		o_S	: out std_logic
	);
end ex1b;
	
architecture behavioral of ex1b is

	signal w_A	:	std_logic;
	signal w_B	:	std_logic;
	signal w_C	:  std_logic;
	signal w_D	:	std_logic;

	begin
	
	w_A <= i_A and i_B and not i_C;
	w_B <= not(i_C and i_D);
	w_C <=  w_A or w_B;
	w_D <= w_c xor i_D;
	
	o_S <= not w_D;

	
end behavioral;