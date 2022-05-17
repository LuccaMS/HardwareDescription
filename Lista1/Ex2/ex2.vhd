library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity ex2 is 
	Port(
	
		i_A	:	in	std_logic;
		i_B	:	in	std_logic;
		o_S	:	out std_logic;
		o_C	:	out std_logic
	);
end ex2;

architecture behavioral of ex2 is
	begin
	
	o_S <= i_A xor i_B;
	o_C <= i_A and i_B;
	
end behavioral;