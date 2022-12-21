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
	
	component fpu is
         port (
              clk_i             : in std_logic;

              -- Input Operands A & B
              opa_i            : in std_logic_vector(32-1 downto 0);  -- Default: FP_WIDTH=32 
              opb_i           : in std_logic_vector(32-1 downto 0);

              -- fpu operations (fpu_op_i):
            -- ========================
            -- 000 = add, 
            -- 001 = substract, 
            -- 010 = multiply, 
            -- 011 = divide,
            -- 100 = square root
            -- 101 = unused
            -- 110 = unused
            -- 111 = unused
              fpu_op_i        : in std_logic_vector(2 downto 0);

              -- Rounding Mode: 
              -- ==============
              -- 00 = round to nearest even(default), 
              -- 01 = round to zero, 
              -- 10 = round up, 
              -- 11 = round down
              rmode_i         : in std_logic_vector(1 downto 0);

              -- Output port
              output_o        : out std_logic_vector(32-1 downto 0);

              -- Control signals
              start_i            : in std_logic; -- is also restart signal
              ready_o         : out std_logic;

              -- Exceptions
              ine_o             : out std_logic; -- inexact
              overflow_o      : out std_logic; -- overflow
              underflow_o     : out std_logic; -- underflow
              div_zero_o      : out std_logic; -- divide by zero
              inf_o            : out std_logic; -- infinity
              zero_o            : out std_logic; -- zero
              qnan_o            : out std_logic; -- queit Not-a-Number
              snan_o            : out std_logic -- signaling Not-a-Number
        );
    end component;
	
signal value_1, value_2, operation: std_logic_vector(31 downto 0);
signal result_divi, result_mult, result_soma, result_subt: std_logic_vector(31 downto 0);
signal result: std_logic_vector(31 downto 0);
signal write_en_val_1, write_en_val_2, write_en_oper: std_logic;
Begin						
	FPU_EXT: fpu port map(
              clk_i           => CLK,
              opa_i        => value_1,
              opb_i        => value_2,
              fpu_op_i        => operation(2 downto 0),
              rmode_i         => "00",
              output_o     => READDATA,
              start_i        => '1',
              ready_o         => open,
              ine_o             => open,
              overflow_o      => open,
              underflow_o     => open,
              div_zero_o      => open,
              inf_o            => open,
              zero_o            => open,
              qnan_o            => open,
              snan_o            => open
    );
	
End architecture;
