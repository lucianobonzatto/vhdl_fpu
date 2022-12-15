Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity web_interface is
	PORT(	CLK:			IN std_logic;
			RST:			IN std_logic;
			CS:			IN std_logic;
			READ_EN:		IN std_logic;
			WRITE_EN:	IN std_logic;
			ADD:			IN std_logic_vector (2 downto 0);
			WRITEDATA:	IN  std_logic_vector(31 downto 0);
			READDATA:	OUT std_logic_vector(31 downto 0));
end entity;

Architecture a_web_interface of web_interface is

	component reg_32 is
	PORT(	CLK:			IN STD_LOGIC;
			RST:			IN STD_LOGIC;
			WRITE_EN:	IN STD_LOGIC;
			DATA_IN:		IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			DATA_OUT:	OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	end component;

signal value_1, value_2, operation: std_logic_vector(31 downto 0);
signal write_en_val_1, write_en_val_2, write_en_oper: std_logic;
Begin
								
	VAL1: reg_32 port map(	CLK		=> CLK,
									RST		=> RST,
									WRITE_EN	=> write_en_val_1,
									DATA_IN	=> WRITEDATA,
									DATA_OUT	=> value_1);
									
	VAL2: reg_32 port map(	CLK		=> CLK,
									RST		=> RST,
									WRITE_EN	=> write_en_val_2,
									DATA_IN	=> WRITEDATA,
									DATA_OUT	=> value_2);
									
	OPER: reg_32 port map(	CLK		=> CLK,
									RST		=> RST,
									WRITE_EN	=> write_en_oper,
									DATA_IN	=> WRITEDATA,
									DATA_OUT	=> operation);
									
	write_en_val_1 <= CS and (not(ADD(2))) and (not(ADD(1)))	and (not(ADD(0)))	and WRITE_EN;
	write_en_val_2 <= CS and (not(ADD(2))) and (not(ADD(1)))	and 	   ADD(0)	and WRITE_EN;
	write_en_oper	<= CS and (not(ADD(2))) and 	  	ADD(1)	and (not(ADD(0)))	and WRITE_EN;
End architecture;
