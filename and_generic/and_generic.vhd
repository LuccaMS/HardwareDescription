library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity and_generic is
	Generic (
		N	:	integer := 4
	
	)
port(
	i_A,i_B	:	in std_logic_vector(7 downto 0);
	i_C : out std_logic_vector(7 downto 0);

);

end and_generic;

architecture behavioral of and_generic is

		
begin


end behavioral;