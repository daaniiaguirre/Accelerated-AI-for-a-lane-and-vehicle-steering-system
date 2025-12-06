-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity cnn_predict_conv1_w_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 6; 
             AddressRange    : integer := 36
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);
 
          address1        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1             : in std_logic; 
          q1              : out std_logic_vector(DataWidth-1 downto 0);
 
          address2        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce2             : in std_logic; 
          q2              : out std_logic_vector(DataWidth-1 downto 0);
 
          address3        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce3             : in std_logic; 
          q3              : out std_logic_vector(DataWidth-1 downto 0);
 
          address4        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce4             : in std_logic; 
          q4              : out std_logic_vector(DataWidth-1 downto 0);
 
          address5        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce5             : in std_logic; 
          q5              : out std_logic_vector(DataWidth-1 downto 0);
 
          address6        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce6             : in std_logic; 
          q6              : out std_logic_vector(DataWidth-1 downto 0);
 
          address7        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce7             : in std_logic; 
          q7              : out std_logic_vector(DataWidth-1 downto 0);
 
          address8        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce8             : in std_logic; 
          q8              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of cnn_predict_conv1_w_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address2_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address3_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address4_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address5_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address6_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address7_tmp : std_logic_vector(AddressWidth-1 downto 0);  
signal address8_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "10111110110010001011101100110100", 1 => "00111110010111101111000010001101", 2 => "00111110110000010011010010010011", 3 => "00111110000111010011111111100000", 
    4 => "10111110100100001011100100011100", 5 => "00111110000110100000001011111111", 6 => "00111110101100011100101101001000", 7 => "00111110101111010101101001011001", 
    8 => "10111110000110010011100000000010", 9 => "10111101101111111010110100011001", 10 => "00111110011100101010001011011000", 11 => "10111101101111100000110101010110", 
    12 => "00111110000001111101110010101111", 13 => "10111101100001100110011011101011", 14 => "10111101101001010100101010001000", 15 => "00111110101000101010000001011101", 
    16 => "00111110110001000011100011001001", 17 => "10111101100100111010011101000010", 18 => "00111110101110111100111100100011", 19 => "00111110010011100011010011111000", 
    20 => "00111110100010011011001011000011", 21 => "00111110011111111111001111011101", 22 => "00111101001001001100001011010110", 23 => "10111110100101001001011110110011", 
    24 => "10111110101001101100010100001001", 25 => "00111110100011101111110101000000", 26 => "10111110100011110100101110000000", 27 => "10111110100001011111101001100010", 
    28 => "10111101001011101000101101100000", 29 => "10111110101100100111011010011011", 30 => "00111110010000101111000101010010", 31 => "00111101111100011111000101000100", 
    32 => "00111110101011101110110011111001", 33 => "10111110101110000101111000001111", 34 => "10111110100000000011111100100000", 35 => "10111110010100100010001101011111");

signal mem1 : mem_array := (
    0 => "10111110110010001011101100110100", 1 => "00111110010111101111000010001101", 2 => "00111110110000010011010010010011", 3 => "00111110000111010011111111100000", 
    4 => "10111110100100001011100100011100", 5 => "00111110000110100000001011111111", 6 => "00111110101100011100101101001000", 7 => "00111110101111010101101001011001", 
    8 => "10111110000110010011100000000010", 9 => "10111101101111111010110100011001", 10 => "00111110011100101010001011011000", 11 => "10111101101111100000110101010110", 
    12 => "00111110000001111101110010101111", 13 => "10111101100001100110011011101011", 14 => "10111101101001010100101010001000", 15 => "00111110101000101010000001011101", 
    16 => "00111110110001000011100011001001", 17 => "10111101100100111010011101000010", 18 => "00111110101110111100111100100011", 19 => "00111110010011100011010011111000", 
    20 => "00111110100010011011001011000011", 21 => "00111110011111111111001111011101", 22 => "00111101001001001100001011010110", 23 => "10111110100101001001011110110011", 
    24 => "10111110101001101100010100001001", 25 => "00111110100011101111110101000000", 26 => "10111110100011110100101110000000", 27 => "10111110100001011111101001100010", 
    28 => "10111101001011101000101101100000", 29 => "10111110101100100111011010011011", 30 => "00111110010000101111000101010010", 31 => "00111101111100011111000101000100", 
    32 => "00111110101011101110110011111001", 33 => "10111110101110000101111000001111", 34 => "10111110100000000011111100100000", 35 => "10111110010100100010001101011111");

signal mem2 : mem_array := (
    0 => "10111110110010001011101100110100", 1 => "00111110010111101111000010001101", 2 => "00111110110000010011010010010011", 3 => "00111110000111010011111111100000", 
    4 => "10111110100100001011100100011100", 5 => "00111110000110100000001011111111", 6 => "00111110101100011100101101001000", 7 => "00111110101111010101101001011001", 
    8 => "10111110000110010011100000000010", 9 => "10111101101111111010110100011001", 10 => "00111110011100101010001011011000", 11 => "10111101101111100000110101010110", 
    12 => "00111110000001111101110010101111", 13 => "10111101100001100110011011101011", 14 => "10111101101001010100101010001000", 15 => "00111110101000101010000001011101", 
    16 => "00111110110001000011100011001001", 17 => "10111101100100111010011101000010", 18 => "00111110101110111100111100100011", 19 => "00111110010011100011010011111000", 
    20 => "00111110100010011011001011000011", 21 => "00111110011111111111001111011101", 22 => "00111101001001001100001011010110", 23 => "10111110100101001001011110110011", 
    24 => "10111110101001101100010100001001", 25 => "00111110100011101111110101000000", 26 => "10111110100011110100101110000000", 27 => "10111110100001011111101001100010", 
    28 => "10111101001011101000101101100000", 29 => "10111110101100100111011010011011", 30 => "00111110010000101111000101010010", 31 => "00111101111100011111000101000100", 
    32 => "00111110101011101110110011111001", 33 => "10111110101110000101111000001111", 34 => "10111110100000000011111100100000", 35 => "10111110010100100010001101011111");

signal mem3 : mem_array := (
    0 => "10111110110010001011101100110100", 1 => "00111110010111101111000010001101", 2 => "00111110110000010011010010010011", 3 => "00111110000111010011111111100000", 
    4 => "10111110100100001011100100011100", 5 => "00111110000110100000001011111111", 6 => "00111110101100011100101101001000", 7 => "00111110101111010101101001011001", 
    8 => "10111110000110010011100000000010", 9 => "10111101101111111010110100011001", 10 => "00111110011100101010001011011000", 11 => "10111101101111100000110101010110", 
    12 => "00111110000001111101110010101111", 13 => "10111101100001100110011011101011", 14 => "10111101101001010100101010001000", 15 => "00111110101000101010000001011101", 
    16 => "00111110110001000011100011001001", 17 => "10111101100100111010011101000010", 18 => "00111110101110111100111100100011", 19 => "00111110010011100011010011111000", 
    20 => "00111110100010011011001011000011", 21 => "00111110011111111111001111011101", 22 => "00111101001001001100001011010110", 23 => "10111110100101001001011110110011", 
    24 => "10111110101001101100010100001001", 25 => "00111110100011101111110101000000", 26 => "10111110100011110100101110000000", 27 => "10111110100001011111101001100010", 
    28 => "10111101001011101000101101100000", 29 => "10111110101100100111011010011011", 30 => "00111110010000101111000101010010", 31 => "00111101111100011111000101000100", 
    32 => "00111110101011101110110011111001", 33 => "10111110101110000101111000001111", 34 => "10111110100000000011111100100000", 35 => "10111110010100100010001101011111");

signal mem4 : mem_array := (
    0 => "10111110110010001011101100110100", 1 => "00111110010111101111000010001101", 2 => "00111110110000010011010010010011", 3 => "00111110000111010011111111100000", 
    4 => "10111110100100001011100100011100", 5 => "00111110000110100000001011111111", 6 => "00111110101100011100101101001000", 7 => "00111110101111010101101001011001", 
    8 => "10111110000110010011100000000010", 9 => "10111101101111111010110100011001", 10 => "00111110011100101010001011011000", 11 => "10111101101111100000110101010110", 
    12 => "00111110000001111101110010101111", 13 => "10111101100001100110011011101011", 14 => "10111101101001010100101010001000", 15 => "00111110101000101010000001011101", 
    16 => "00111110110001000011100011001001", 17 => "10111101100100111010011101000010", 18 => "00111110101110111100111100100011", 19 => "00111110010011100011010011111000", 
    20 => "00111110100010011011001011000011", 21 => "00111110011111111111001111011101", 22 => "00111101001001001100001011010110", 23 => "10111110100101001001011110110011", 
    24 => "10111110101001101100010100001001", 25 => "00111110100011101111110101000000", 26 => "10111110100011110100101110000000", 27 => "10111110100001011111101001100010", 
    28 => "10111101001011101000101101100000", 29 => "10111110101100100111011010011011", 30 => "00111110010000101111000101010010", 31 => "00111101111100011111000101000100", 
    32 => "00111110101011101110110011111001", 33 => "10111110101110000101111000001111", 34 => "10111110100000000011111100100000", 35 => "10111110010100100010001101011111");



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
 
memory_access_guard_1: process (address1) 
begin
      address1_tmp <= address1;
--synthesis translate_off
      if (CONV_INTEGER(address1) > AddressRange-1) then
           address1_tmp <= (others => '0');
      else 
           address1_tmp <= address1;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_2: process (address2) 
begin
      address2_tmp <= address2;
--synthesis translate_off
      if (CONV_INTEGER(address2) > AddressRange-1) then
           address2_tmp <= (others => '0');
      else 
           address2_tmp <= address2;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_3: process (address3) 
begin
      address3_tmp <= address3;
--synthesis translate_off
      if (CONV_INTEGER(address3) > AddressRange-1) then
           address3_tmp <= (others => '0');
      else 
           address3_tmp <= address3;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_4: process (address4) 
begin
      address4_tmp <= address4;
--synthesis translate_off
      if (CONV_INTEGER(address4) > AddressRange-1) then
           address4_tmp <= (others => '0');
      else 
           address4_tmp <= address4;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_5: process (address5) 
begin
      address5_tmp <= address5;
--synthesis translate_off
      if (CONV_INTEGER(address5) > AddressRange-1) then
           address5_tmp <= (others => '0');
      else 
           address5_tmp <= address5;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_6: process (address6) 
begin
      address6_tmp <= address6;
--synthesis translate_off
      if (CONV_INTEGER(address6) > AddressRange-1) then
           address6_tmp <= (others => '0');
      else 
           address6_tmp <= address6;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_7: process (address7) 
begin
      address7_tmp <= address7;
--synthesis translate_off
      if (CONV_INTEGER(address7) > AddressRange-1) then
           address7_tmp <= (others => '0');
      else 
           address7_tmp <= address7;
      end if;
--synthesis translate_on
end process;
 
memory_access_guard_8: process (address8) 
begin
      address8_tmp <= address8;
--synthesis translate_off
      if (CONV_INTEGER(address8) > AddressRange-1) then
           address8_tmp <= (others => '0');
      else 
           address8_tmp <= address8;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;
 
        if (ce1 = '1') then  
            q1 <= mem0(CONV_INTEGER(address1_tmp)); 
        end if;
 
        if (ce2 = '1') then  
            q2 <= mem1(CONV_INTEGER(address2_tmp)); 
        end if;
 
        if (ce3 = '1') then  
            q3 <= mem1(CONV_INTEGER(address3_tmp)); 
        end if;
 
        if (ce4 = '1') then  
            q4 <= mem2(CONV_INTEGER(address4_tmp)); 
        end if;
 
        if (ce5 = '1') then  
            q5 <= mem2(CONV_INTEGER(address5_tmp)); 
        end if;
 
        if (ce6 = '1') then  
            q6 <= mem3(CONV_INTEGER(address6_tmp)); 
        end if;
 
        if (ce7 = '1') then  
            q7 <= mem3(CONV_INTEGER(address7_tmp)); 
        end if;
 
        if (ce8 = '1') then  
            q8 <= mem4(CONV_INTEGER(address8_tmp)); 
        end if;

end if;
end process;

end rtl;

