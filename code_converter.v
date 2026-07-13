module bin_to_hex( input [3:0]bin,output reg [3:0] hex );
always @(*) begin
    case(bin)
        4'b0000: hex = 4'h0;
        4'b0001: hex = 4'h1;
        4'b0010: hex = 4'h2;
        4'b0011: hex = 4'h3;
        4'b0100: hex = 4'h4;
        4'b0101: hex = 4'h5;
        4'b0110: hex = 4'h6;
        4'b0111: hex = 4'h7;
        4'b1000: hex = 4'h8;
        4'b1001: hex = 4'h9;
        4'b1010: hex = 4'hA;
        4'b1011: hex = 4'hB;
        4'b1100: hex = 4'hC;
        4'b1101: hex = 4'hD;
        4'b1110: hex = 4'hE;
        4'b1111: hex = 4'hF;
        default: hex = 4'h0;
    endcase
end
endmodule

module bin_to_gray( input  [3:0] bin,output reg [3:0] gray);
always @(*) begin
    case(bin)
        4'b0000: gray = 4'b0000;
        4'b0001: gray = 4'b0001;
        4'b0010: gray = 4'b0011;
        4'b0011: gray = 4'b0010;
        4'b0100: gray = 4'b0110;
        4'b0101: gray = 4'b0111;
        4'b0110: gray = 4'b0101;
        4'b0111: gray = 4'b0100;
        4'b1000: gray = 4'b1100;
        4'b1001: gray = 4'b1101;
        4'b1010: gray = 4'b1111;
        4'b1011: gray = 4'b1110;
        4'b1100: gray = 4'b1010;
        4'b1101: gray = 4'b1011;
        4'b1110: gray = 4'b1001;
        4'b1111: gray = 4'b1000;
        default: gray = 4'b0000;
    endcase
end
endmodule

module bin_to_decimal(input [3:0] bin,output reg [3:0] tens,output reg [3:0] units);
always @(*) begin
    case(bin)
        4'd0:  begin tens=0; units=0; end
        4'd1:  begin tens=0; units=1; end
        4'd2:  begin tens=0; units=2; end
        4'd3:  begin tens=0; units=3; end
        4'd4:  begin tens=0; units=4; end
        4'd5:  begin tens=0; units=5; end
        4'd6:  begin tens=0; units=6; end
        4'd7:  begin tens=0; units=7; end
        4'd8:  begin tens=0; units=8; end
        4'd9:  begin tens=0; units=9; end
        4'd10: begin tens=1; units=0; end
        4'd11: begin tens=1; units=1; end
        4'd12: begin tens=1; units=2; end
        4'd13: begin tens=1; units=3; end
        4'd14: begin tens=1; units=4; end
        4'd15: begin tens=1; units=5; end
        default: begin tens=0; units=0; end
    endcase
end
endmodule

module bin_to_bcd(input  [3:0] bin,output reg [7:0] bcd);
always @(*) begin
    case(bin)
        4'd0:  bcd = 8'b0000_0000;
        4'd1:  bcd = 8'b0000_0001;
        4'd2:  bcd = 8'b0000_0010;
        4'd3:  bcd = 8'b0000_0011;
        4'd4:  bcd = 8'b0000_0100;
        4'd5:  bcd = 8'b0000_0101;
        4'd6:  bcd = 8'b0000_0110;
        4'd7:  bcd = 8'b0000_0111;
        4'd8:  bcd = 8'b0000_1000;
        4'd9:  bcd = 8'b0000_1001;
        4'd10: bcd = 8'b0001_0000;
        4'd11: bcd = 8'b0001_0001;
        4'd12: bcd = 8'b0001_0010;
        4'd13: bcd = 8'b0001_0011;
        4'd14: bcd = 8'b0001_0100;
        4'd15: bcd = 8'b0001_0101;
        default: bcd = 8'b0000_0000;
    endcase
end
endmodule

module anode_control(in,anode);
input [2:0]in;output reg [7:0] anode ;
always@(*)
begin
case (in)
     3'b000: anode=8'b11111110;
     3'b001: anode=8'b11111101;
     3'b010: anode=8'b11111011;
     3'b011: anode=8'b11110111;
     3'b100: anode=8'b11101111;
     3'b101: anode=8'b11011111;
     3'b110: anode=8'b10111111;
     3'b111: anode=8'b01111111;
     default : anode=8'b11111111;
endcase
end
endmodule


module clockdivider(clk,nclk);
input clk; output reg nclk; reg [31:0]count=0;
always @(posedge clk)
begin
count=count + 1;
nclk=count[15];
end
endmodule

module refresh_counter(input clk, output reg [2:0]rc=3'b000);
always @(posedge clk)
begin    rc=rc + 1;    end
endmodule

module seg7_cathode(input [3:0] in,output reg [6:0] cathode);
always @(*) begin
    case(in)
        4'h0: cathode = 7'b1000000; // 0
        4'h1: cathode = 7'b1111001; // 1
        4'h2: cathode = 7'b0100100; // 2
        4'h3: cathode = 7'b0110000; // 3
        4'h4: cathode = 7'b0011001; // 4
        4'h5: cathode = 7'b0010010; // 5
        4'h6: cathode = 7'b0000010; // 6
        4'h7: cathode = 7'b1111000; // 7
        4'h8: cathode = 7'b0000000; // 8
        4'h9: cathode = 7'b0010000; // 9
        4'hA: cathode = 7'b0001000; // A
        4'hB: cathode = 7'b0000011; // b
        4'hC: cathode = 7'b1000110; // C
        4'hD: cathode = 7'b0100001; // d
        4'hE: cathode = 7'b0000110; // E
        4'hF: cathode = 7'b0001110; // F
        default: cathode = 7'b1111111; // OFF
    endcase
end
endmodule


module main_top(input clk,input [3:0] bin,input [1:0] mode,output [6:0] cathode,output [7:0] anode);
wire nclk;  wire [2:0] rc;  wire [3:0] hex, gray, tens, units;  wire [7:0] bcd;  reg [3:0] digit;
bin_to_hex     u1 (.bin(bin), .hex(hex));
bin_to_gray    u2 (.bin(bin), .gray(gray));
bin_to_decimal u3 (.bin(bin), .tens(tens), .units(units));
bin_to_bcd     u4 (.bin(bin), .bcd(bcd));

clockdivider   u5 (.clk(clk), .nclk(nclk));
refresh_counter u6 (.clk(nclk), .rc(rc));
anode_control  u7 (.in(rc), .anode(anode));
always @(*) begin
    case(mode)
    2'b00: begin
        case(rc)
            3'b000: digit = units;   // 1st display
            3'b100: digit = tens;    // 5th display
            default: digit = 4'd0;
        endcase
    end
    2'b01: begin
        case(rc)
            3'b000: digit = hex;
            default: digit = 4'd0;
        endcase
    end
    2'b10: begin
        case(rc)
            3'b000: digit = gray[0]; // LSB
            3'b001: digit = gray[1];
            3'b010: digit = gray[2];
            3'b011: digit = gray[3]; // MSB
            default: digit = 4'd0;
        endcase
    end
    2'b11: begin
        case(rc)
            3'b000: digit = bcd[0];
            3'b001: digit = bcd[1];
            3'b010: digit = bcd[2];
            3'b011: digit = bcd[3];
            3'b100: digit = bcd[4];
            3'b101: digit = bcd[5];
            3'b110: digit = bcd[6];
            3'b111: digit = bcd[7];
        endcase
    end
    default: digit = 4'd0;
    endcase
end
seg7_cathode u8 (.in(digit), .cathode(cathode));
endmodule

module top_code_converter(input clk,input [5:0] sw,output [6:0] seg,output [7:0] an);
wire [3:0] bin = sw[3:0];
wire [1:0] mode = sw[5:4];
main_top uut (.clk(clk),.bin(bin),.mode(mode),.cathode(seg),.anode(an));
endmodule
//`timescale 1ns / 1ps

//module tb_main_top;
//reg clk;reg [3:0] bin;reg [1:0] mode;wire [6:0] cathode;wire [7:0] anode;
//main_top uut (.clk(clk),.bin(bin),.mode(mode),.cathode(cathode),.anode(anode));
//always #5 clk = ~clk;   
//initial begin
//    clk = 0;
//    $display("Time | Mode | Bin | Cathode | Anode");
//    $display("------------------------------------------------");
//    mode = 2'b00;
//    bin = 4'd5; 
//    #100;
//    $display("%4t | DEC | %d | %b | %b", $time, bin, cathode, anode);
//    bin = 4'd14;  
//    #100;
//    $display("%4t | DEC | %d | %b | %b", $time, bin, cathode, anode);
//    mode = 2'b01;
//    bin = 4'd10;  
//    #100;
//    $display("%4t | HEX | %d | %b | %b", $time, bin, cathode, anode);
//    bin = 4'd15; 
//    #100;
//    $display("%4t | HEX | %d | %b | %b", $time, bin, cathode, anode);
//    mode = 2'b10;
//    bin = 4'd10;
//    #100;
//    $display("%4t | GRAY | %d | %b | %b", $time, bin, cathode, anode);
//    bin = 4'd7;   
//    #100;
//    $display("%4t | GRAY | %d | %b | %b", $time, bin, cathode, anode);
//    mode = 2'b11;
//    bin = 4'd13;  
//    #100;
//    $display("%4t | BCD | %d | %b | %b", $time, bin, cathode, anode);
//    bin = 4'd9;  
//    #100;
//    $display("%4t | BCD | %d | %b | %b", $time, bin, cathode, anode);
//    $finish;
//end
//endmodule
