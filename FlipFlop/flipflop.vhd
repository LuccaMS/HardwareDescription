library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity flipflop is
	Port(
			i_clk	:	in	std_logic;
			i_rst	:	in	std_logic;
			
			i_load : in std_logic;
			i_en	:	in	std_logic;
			i_data:	in	std_logic_vector(7 downto 0);
			o_data:	out std_logic_vector(7 downto 0)	
	);
	
end flipflop;


architecture behavioral of flipflop is
begin
--
--	PROCESS(i_clk,i_rst)
--	BEGIN
--	if(i_rst = '1') THEN
--		o_data <= (others => '0');
--	elsif RISING_EDGE(i_clk) THEN
--		o_data<= i_data;
--	end if;
--	
--	end process;


	PROCESS(i_clk)
	begin
	if rising_edge(i_clk) then
		if(i_rst = '1') then
			o_data <= (others => '0');
		elsif(i_en = '1') then
			o_data <= i_data;
		elsif(i_load = '1') then
			o_data <= x"A5";
		end if;
	end if;
	
	end process;

end behavioral;