`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:26 04/07/2015 
// Design Name: 
// Module Name:    H1 
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
module H1(input Block, clk, input [31:0] a, output reg [31:0] H1_out);

reg source;			// 0 - read from initial values. 1 - read from intermediate

initial
H1_out = 32'h6a09e667;

always @ (posedge clk)
begin
	//
	if (Block == 0)		//initial block, reading default values
		begin
			H1_out = 32'h6a09e667;
			source =0;
		end
	else
		begin
		if(source == 0)
		begin
			H1_out = a + H1_out;
			source = ~source;
		end
		end
		
end

endmodule