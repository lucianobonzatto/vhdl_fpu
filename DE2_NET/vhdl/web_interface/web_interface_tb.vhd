Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity web_interface_tb is
end entity;

Architecture a_web_interface_tb of web_interface_tb is
component web_interface is
	PORT(	CLK:			IN std_logic;
			RST:			IN std_logic;
			CS:			IN std_logic;
			READ_EN:		IN std_logic;
			WRITE_EN:	IN std_logic;
			ADD:			IN std_logic_vector (2 downto 0);
			WRITEDATA:	IN  std_logic_vector(31 downto 0);
			READDATA:	OUT std_logic_vector(31 downto 0));
end component;

TYPE state_type is (stop, idle, write_add, write_data, write_controle, write_stop, read_add, read_controle, read_stop);
signal rst, clk: std_logic;
signal READDATA, WRITEDATA: std_logic_vector(31 downto 0);
signal ADD: std_logic_vector(1 downto 0);
signal state: state_type;
signal CS, WRITE_EN, READ_EN: std_logic;
signal wt_address: integer;

begin  
	DUT: web_interface port map(		CLK			=> clk,
												RST			=> rst,
												CS				=> CS,
												READ_EN		=> READ_EN,
												WRITE_EN		=> WRITE_EN,
												ADD			=> ADD,
												WRITEDATA	=> WRITEDATA,
												READDATA		=> READDATA);
	gera_rst:process 
	begin 
		rst <= '0';
		READ_EN <= '1';
		WRITE_EN <= '1';
		wait for 15 ns;
		rst <= '1';
		CS <= '1';
		WRITEDATA <= "00000000000000000000000000000000";
		wait for 17 ns;
		
		ADD <= "000";
		WRITEDATA <= "00000000000000000000000000001111";
		wait for 20 ns;
		
		ADD <= "001";
		WRITEDATA <= "00000000000000000000000011110000";
		wait for 20 ns;
		
		ADD <= "010";
		WRITEDATA <= "00000000000000000000111100000000";
		wait for 20 ns;
		
		wait;
	end process;

	gera_clk:process 
	begin 
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;
End architecture;

