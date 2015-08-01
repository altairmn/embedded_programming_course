library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
---------------------------
entity top is
	port (
		clk : in bit;
		nready: in std_logic;
		nreset: in std_logic;
		data_in: in bit_vector(3 downto 0);
		data_out: out bit_vector(3 downto 0)
	);
end entity top;
--------------------------------
architecture top_arch of top is
--------------------------------
signal counter : std_logic_vector(2 downto 0);
signal enable_out : std_logic;
--------------------------------
component input is
	port(
		clk: in bit;
		nready: in std_logic;
		data_in: in bit_vector(3 downto 0);
		data_out: out bit_vector(3 downto 0)
	);
end component;
component counter8 is
	port(
		clk : in std_logic;
		nreset : in std_logic;
		nready : in std_logic;
		count : out std_logic_vector (2 downto 0)
	);
end component;

component en_gen is
	port(
		clk : in std_logic;
		nreset: in std_logic;
		count_in: in std_logic_vector(2 downto 0);
		enable : out std_logic
	);
end component;

---------------------------------------
begin
input_module: input
	port map(
		clk => clk,
		nready => nready,
		data_in => data_in,
		data_out => transfer
	);

unit_counter: counter8
	port map(
		clk => clk,
		nreset => nreset,
		nready => nready,
		count => counter
	);

end top_arch;