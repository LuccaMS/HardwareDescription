library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity test_ex3 is
end test_ex3;

architecture behavioral of test_ex3 is


component ex3 is 
	Port (
	reg_A	:	in	STD_LOGIC_VECTOR(7 DOWNTO 0);
	reg_B	:	in STD_LOGIC_VECTOR(7 DOWNTO 0);
	o_S	:	out	STD_LOGIC_VECTOR(7 DOWNTO 0);
	o_C	:	out std_logic
	);
end component;

signal w_A : STD_LOGIC_VECTOR(7 DOWNTO 0);
signal w_B : STD_LOGIC_VECTOR(7 DOWNTO 0);

signal w_S : STD_LOGIC_VECTOR(7 DOWNTO 0);
signal w_C : std_logic;

begin

UU0 : ex3
PORT MAP (
	reg_A => w_A,
	reg_B => w_B,
	o_S => w_S,
	o_C => w_C
);


process 
begin

	w_A <= x"01";
	w_B <= x"01";
	WAIT FOR	20 NS;
	
	w_A <= x"11";
	w_B <= x"91";
	WAIT FOR	20 NS;
	

end process;
end behavioral;