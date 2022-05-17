library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity ex3 is 
	Port (
	reg_A	:	in	STD_LOGIC_VECTOR(7 DOWNTO 0);
	reg_B	:	in STD_LOGIC_VECTOR(7 DOWNTO 0);
	o_S	:	out	STD_LOGIC_VECTOR(7 DOWNTO 0);
	o_C	:	out std_logic
	);
end ex3;


architecture behavioral of ex3 is

component Ex2completo is 
	port(
	i_A	:	in	STD_LOGIC_VECTOR(7 DOWNTO 0);
	i_B	:	in	STD_LOGIC_VECTOR(7 DOWNTO 0);
	i_C	:	in	std_logic;
	o_S	:	out STD_LOGIC_VECTOR(7 DOWNTO 0);
	o_C	:	out std_logic
	);
end component;


begin

	U01	: Ex2completo
		Port Map (
		i_A	=> reg_A,
		i_B	=> reg_B,
		o_C	=> o_C,
		o_S	=> o_S
		);
		
end behavioral;