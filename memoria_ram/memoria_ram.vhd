library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity memoria_ram is
Generic(
	p_MEMO_TYPE		:	string := "Nutela";
	p_DATA_WIDTH	:	integer := 16;
	P_ADD_WIDTH		:  integer := 9
);
PORT(
	i_clk	: in std_logic;
	i_data : in std_logic_vector(p_DATA_WIDTH - 1 downto 0);
	i_add : in std_logic_vector(p_ADD_WIDTH -1 downto 0);
	i_WE : std_logic;
	i_EN : std_logic;
	o_data : out std_logic_vector(p_DATA_WIDTH -1 downto 0)
);
end memoria_ram;

architecture behavioral of memoria_ram is

	type MEM_TIPO is array(i_ADD'range) of std_logic_vector(i_DATA'range);
	signal w_MEMORIA : MEM_TIPO;
	
		
	attribute ramstyle: string;
	attribute ramstyle of w_MEMORIA : signal is "M9K";	


component ram_intel
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		clken		: IN STD_LOGIC  := '1';
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
end component;
	
begin

Nutela : if(p_MEMO_TYPE = "Nutela") generate
	U01 : ram_intel PORT MAP (
		address	 => i_add,
		clken	 => i_EN,
		clock	 => i_clk,
		data	 => i_data,
		wren	 => i_WE,
		q	 => o_data
	);
end generate;


Raiz : if(p_MEMO_TYPE = "Raiz") generate
	process(i_clk)
		begin

			if rising_edge(i_clk) then
				if(i_EN = '1') then
					if(i_WE ='1') then
					w_MEMORIA(conv_integer(i_add)) <= i_data;
				else
					o_data <= w_MEMORIA(conv_integer(i_add));
					end if;
				end if;
			end if;
	end process;
end generate;

end behavioral;