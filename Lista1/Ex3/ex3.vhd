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
	i_A	:	in std_logic;
	i_B	:	in std_logic;
	i_C	:	in	std_logic;
	o_S	:	out std_logic;
	o_C	:	out std_logic
	);
end component;

signal w_C: std_logic_vector(7 downto 0);

begin

	U00	: Ex2completo
		Port Map (
		i_A => reg_A(0),
		i_B => reg_B(0),
		i_C => w_C(0),
		o_S => o_S(0),
		o_C => w_C(1)
		);
		
	U01	: Ex2completo
		Port Map (
		i_A => reg_A(1),
		i_B => reg_B(1),
		i_C => w_C(1),
		o_S => o_S(1),
		o_C => w_C(2)
		);
		
	U02	: Ex2completo
		Port Map (
		i_A => reg_A(2),
		i_B => reg_B(2),
		i_C => w_C(2),
		o_S => o_S(2),
		o_C => w_C(3)
		);
		
	U03	: Ex2completo
		Port Map (
		i_A => reg_A(3),
		i_B => reg_B(3),
		i_C => w_C(3),
		o_S => o_S(3),
		o_C => w_C(4)
		);
	U04	: Ex2completo
		Port Map (
		i_A => reg_A(4),
		i_B => reg_B(4),
		i_C => w_C(4),
		o_S => o_S(4),
		o_C => w_C(5)
		);
	U05	: Ex2completo
		Port Map (
		i_A => reg_A(5),
		i_B => reg_B(5),
		i_C => w_C(5),
		o_S => o_S(5),
		o_C => w_C(6)
		);
	U06	: Ex2completo
		Port Map (
		i_A => reg_A(6),
		i_B => reg_B(6),
		i_C => w_C(6),
		o_S => o_S(6),
		o_C => w_C(7)
		);
	U07	: Ex2completo
		Port Map (
		i_A => reg_A(7),
		i_B => reg_B(7),
		i_C => w_C(7),
		o_S => o_S(7),
		o_C => o_C
		);


		
		
end behavioral;