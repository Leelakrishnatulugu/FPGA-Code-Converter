# FPGA-Based Multi-Mode Code Converter using Verilog HDL

> A Verilog HDL implementation of a **Multi-Mode Code Converter** on the **Nexys 4 FPGA**, capable of converting a 4-bit binary input into **Decimal, Hexadecimal, Gray Code, and Binary-Coded Decimal (BCD)** with real-time output on multiplexed seven-segment displays.


## Project Overview

This project demonstrates the implementation of a **Multi-Mode Code Converter** using **Verilog HDL** on the **Nexys 4 FPGA Development Board**. The system accepts a 4-bit binary input through FPGA switches and converts it into different code formats depending on the selected mode.

The complete design was developed and verified using **Xilinx Vivado**, including **Behavioral Simulation**, **RTL Schematic Generation**, and FPGA implementation.


# Features

- Binary to Decimal Conversion
- Binary to Hexadecimal Conversion
- Binary to Gray Code Conversion
- Binary to Binary-Coded Decimal (BCD) Conversion
- Seven-Segment Display Multiplexing
- Clock Divider
- Refresh Counter
- Anode Control Logic
- Cathode Control Logic
- Behavioral Simulation
- RTL Design Verification


# Technologies Used

- Verilog HDL
- Xilinx Vivado
- Nexys 4 FPGA
- RTL Design
- Digital Logic Design
- FPGA Implementation


# Hardware Used

- Nexys 4 FPGA Development Board
- Seven-Segment Display
- Slide Switches
- Push Buttons
- System Clock


# Software Used

- Xilinx Vivado Design Suite
- Verilog HDL


# Working Principle

1. The user enters a 4-bit binary number using the FPGA switches.
2. The desired conversion mode is selected.
3. The Verilog logic performs the selected code conversion.
4. A clock divider generates a slower refresh signal.
5. The refresh counter multiplexes the seven-segment displays.
6. Anode and cathode control modules display the converted output in real time.


# Conversion Modes

| Mode | Conversion |
|------|------------|
| 00 | Binary → Decimal |
| 01 | Binary → Hexadecimal |
| 10 | Binary → Gray Code |
| 11 | Binary → Binary-Coded Decimal (BCD) |


# Project Structure

```
FPGA-Code-Converter
│
├── FPGA_Code_Converter.v
├── FPGA_Code_Converter.xdc
├── RTL_Schematic.png
├── Simulation_Waveform.png
├── FPGA_Code_Converter_Presentation.pptx
└── README.md
```


# RTL Schematic

The RTL schematic generated in **Xilinx Vivado** illustrates the hardware architecture and module connectivity of the FPGA-based Multi-Mode Code Converter.

> **Image:** RTL_Schematic.png


# Behavioral Simulation

Behavioral simulation was performed in **Xilinx Vivado** to verify the correctness of each conversion mode and the display control logic before FPGA implementation.

> **Image:** Simulation_Waveform.png


# Applications

- FPGA Learning
- Digital Electronics Laboratory
- Digital Logic Design
- VLSI Education
- Code Conversion Systems
- Embedded Systems Education


# Future Improvements

- Support 8-bit and 16-bit binary inputs
- Add Binary to Octal conversion
- Add Binary to ASCII conversion
- LCD Display Interface
- UART Communication
- Parameterized Verilog Design
- Modular Architecture


# Learning Outcomes

Through this project, I gained practical experience in:

- Verilog HDL Programming
- FPGA Design Flow
- RTL Design
- Behavioral Simulation
- Seven-Segment Display Interfacing
- Clock Division
- Digital Logic Design
- Hardware Verification
- FPGA Implementation using Xilinx Vivado


# Author

**Leela Krishna Tulugu**

Electronics and Communication Engineering Student

Specialization: VLSI | FPGA | Embedded Systems

GitHub:
https://github.com/Leelakrishnatulugu

LinkedIn:
https://www.linkedin.com/in/leelakrishnatulugu

Portfolio:
https://leelakrishnatulugu1.netlify.app

---

## If you found this project useful, feel free to ⭐ this repository.
