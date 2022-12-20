Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity web_interface is
	PORT(	CLK:			IN std_logic;
			RST:			IN std_logic;
			CS:			IN std_logic;
			READ_EN:		IN std_logic;
			WRITE_EN:	IN std_logic;
			ADD:			IN std_logic_vector (3 downto 0);
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
	
	component divi is
	PORT(	CLK:		IN std_logic;
			RST:		IN std_logic;
			VALUE1:	IN std_logic_vector (31 downto 0);
			VALUE2:	IN std_logic_vector (31 downto 0);
			RESULT:	OUT std_logic_vector (31 downto 0));
	end component;
	
	component mult is
	PORT(	CLK:		IN std_logic;
			RST:		IN std_logic;
			VALUE1:	IN std_logic_vector (31 downto 0);
			VALUE2:	IN std_logic_vector (31 downto 0);
			RESULT:	OUT std_logic_vector (31 downto 0));
	end component;
	
	component soma is
	PORT(	CLK:		IN std_logic;
			RST:		IN std_logic;
			VALUE1:	IN std_logic_vector (31 downto 0);
			VALUE2:	IN std_logic_vector (31 downto 0);
			RESULT:	OUT std_logic_vector (31 downto 0));
	end component;
	
	component subt is
	PORT(	CLK:		IN std_logic;
			RST:		IN std_logic;
			VALUE1:	IN std_logic_vector (31 downto 0);
			VALUE2:	IN std_logic_vector (31 downto 0);
			RESULT:	OUT std_logic_vector (31 downto 0));
	end component;
	
signal value_1, value_2, operation: std_logic_vector(31 downto 0);
signal result_divi, result_mult, result_soma, result_subt: std_logic_vector(31 downto 0);
signal result: std_logic_vector(31 downto 0);
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
									
	
	CALC_DIVISAO: 			divi port map(	CLK		=> CLK,
													RST		=> RST,
													VALUE1	=> value_1,
													VALUE2	=> value_2,
													RESULT	=> result_divi);
														
	CALC_MULTIPLICACAO:	mult port map(	CLK		=> CLK,
													RST		=> RST,
													VALUE1	=> value_1,
													VALUE2	=> value_2,
													RESULT	=> result_mult);
													
	CALC_SOMA:				soma port map(	CLK		=> CLK,
													RST		=> RST,
													VALUE1	=> value_1,
													VALUE2	=> value_2,
													RESULT	=> result_soma);
													
	CALC_SUBTRACAO:		subt port map(	CLK		=> CLK,
													RST		=> RST,
													VALUE1	=> value_1,
													VALUE2	=> value_2,
													RESULT	=> result_subt);
	
	write_en_val_1 <= CS and (not(ADD(3))) and (not(ADD(2))) and (not(ADD(1)))	and (not(ADD(0)))	and WRITE_EN;
	write_en_val_2 <= CS and (not(ADD(3))) and (not(ADD(2))) and (not(ADD(1)))	and 	   ADD(0)	and WRITE_EN;
	write_en_oper	<= CS and (not(ADD(3))) and (not(ADD(2))) and 	  	ADD(1)	and (not(ADD(0)))	and WRITE_EN;
	
	READDATA			<= x"00000000" when CS = '0' 			else
							x"00000000" when RST = '0' 		else
							x"00000000" when READ_EN = '0'	else
							value_1		when ADD = "1000" 	else
							value_2		when ADD = "1001" 	else
							operation	when ADD = "1010" 	else
							result_divi	when ADD = "1011" and operation = "00" else
							result_mult	when ADD = "1011" and operation = "01" else
							result_soma	when ADD = "1011" and operation = "10" else
							result_subt	when ADD = "1011" and operation = "11" else
							x"00000000";
	
End architecture;
