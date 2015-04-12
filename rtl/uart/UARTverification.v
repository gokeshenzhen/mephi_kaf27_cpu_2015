`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:47:15 04/02/2015 
// Design Name: 
// Module Name:    UARTverification 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module UARTverification(
    input clk, 
    input rst, 
    input rx1, 
    output tx1, 
    input transmit1, 
    input [7:0] tx_byte1, 
    output received1, 
    output [7:0] rx_byte1, 
    output is_receiving1, 
    output is_transmitting1, 
    output recv_error1, 
	 
   
    output tx2, 
    input transmit2, 
    input [7:0] tx_byte2, 
    output received2, 
    output [7:0] rx_byte2, 
    output is_receiving2, 
    output is_transmitting2, 
    output recv_error2 
    );
	 
	 

uart uart1 (
    .clk(clk), 
    .rst(rst), 
    .rx(rx1), 
    .tx(tx1), 
    .transmit(transmit1), 
    .tx_byte(tx_byte1), 
    .received(received1), 
    .rx_byte(rx_byte1), 
    .is_receiving(is_receiving1), 
    .is_transmitting(is_transmitting1), 
    .recv_error(recv_error1) 
    );
	 
uart uart2 (
    .clk(clk), 
    .rst(rst), 
    .rx(tx1), 
    .tx(tx2), 
    .transmit(transmit2), 
    .tx_byte(tx_byte2), 
    .received(received2), 
    .rx_byte(rx_byte2), 
    .is_receiving(is_receiving2), 
    .is_transmitting(is_transmitting2), 
    .recv_error(recv_error2)
    );
	 
	
endmodule