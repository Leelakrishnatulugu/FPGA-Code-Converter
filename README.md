# FPGA-Based Multi-Mode Code Converter

-> Project Overview

This project implements a **Multi-Mode Code Converter** using **Verilog HDL** on the **Nexys 4 FPGA** platform. The system converts a 4-bit binary input into different code formats based on the selected operating mode and displays the output on multiplexed seven-segment displays.

The project was designed and simulated using **Xilinx Vivado**, demonstrating practical experience in FPGA design, RTL development, digital logic implementation, and hardware verification.

-> Features

- Binary to Decimal Conversion
- Binary to Hexadecimal Conversion
- Binary to Gray Code Conversion
- Binary to Binary-Coded Decimal (BCD) Conversion
- Clock Divider for Display Refresh
- Refresh Counter
- Seven-Segment Display Multiplexing
- Anode Control
- Cathode Control
- RTL Design
- Behavioral Simulation

-> Technologies Used

- Verilog HDL
- Xilinx Vivado
- Nexys 4 FPGA
- Digital Logic Design
- RTL Design
- FPGA Implementation

-> Hardware Used

- Nexys 4 FPGA Development Board
- Seven-Segment Display
- Slide Switches
- System Clock

-> Working Principle

The user provides a 4-bit binary input using the FPGA switches and selects the required conversion mode. The Verilog modules perform the selected conversion, while the clock divider and refresh counter control the multiplexed seven-segment displays for real-time visualization of the output.

-> Conversion Modes

| Mode | Conversion |
|------|------------|
| 00 | Binary → Decimal |
| 01 | Binary → Hexadecimal |
| 10 | Binary → Gray Code |
| 11 | Binary → BCD |

-> Simulation

The design was verified through Behavioral Simulation and RTL Schematic generation using Xilinx Vivado before hardware implementation.

-> Applications

- FPGA Learning
- Digital Electronics
- Digital Logic Design
- Code Conversion Systems
- Educational Laboratories
- VLSI Design Practice

-> Future Improvements

- Support larger binary inputs
- Add Binary to Octal Conversion
- Add Binary to ASCII Conversion
- LCD Display Interface
- UART Output

-> Author

Leela Krishna Tulugu
