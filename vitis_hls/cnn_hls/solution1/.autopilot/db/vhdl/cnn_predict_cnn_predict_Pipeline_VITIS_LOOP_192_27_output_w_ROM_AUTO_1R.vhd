-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_192_27_output_w_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 4; 
             AddressRange    : integer := 16
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of cnn_predict_cnn_predict_Pipeline_VITIS_LOOP_192_27_output_w_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "00111110111100010101101101101010", 1 => "00111110100010000101000110000000", 2 => "00111101101100011110011101101111", 3 => "00111110010011100110100100111111", 
    4 => "00111101111101110111001110100001", 5 => "10111101111011111010101010100100", 6 => "10111111000001100111111000110110", 7 => "00111110111100011101101100101111", 
    8 => "00111110110010110001000010000110", 9 => "10111101110000111010101001100111", 10 => "00111110101010011001000000100001", 11 => "10111110101100001011010010000010", 
    12 => "10111111001010111000100010010111", 13 => "10111100111100011000111101000000", 14 => "00111110100011110011001101100010", 15 => "10111110011111101110101011000011");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

