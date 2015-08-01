----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:26:42 04/09/2015 
-- Design Name: 
-- Module Name:    data_in - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity input is
	port(
		clk: in bit;
		data_in: in std_logic_vector(3 downto 0);
		counter: in std_logic_vector(2 downto 0);
		enable: in std_logic;
		data_out: out std_logic_vector(3 downto 0)
	);
end input;

architecture Behavioral of input is
begin
Input: process(clk, enable)
variable count : integer := integer(counter);
variable outP : integer := 0;
begin
	if(enable = 1) then
		if(rising_edge(clk)) then
			case count is
			when 0 => 
				data_out <= data_in;
			when 1 =>
				data_out <= data_in;
			when 2 =>
				data_out <= data_in;
			when 3 =>
				data_out <= data_in;
			when 5 =>
				data_out <= data_in;
			when 7 =>
				data_out <= data_in;
			end case;
		end if;
	end if;
end process Input;

end Behavioral;

