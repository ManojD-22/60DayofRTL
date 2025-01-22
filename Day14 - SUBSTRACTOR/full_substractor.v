`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2025 23:37:57
// Design Name: 
// Module Name: full_substractor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_substractor(
    input a,
    input b,
    input borrow,
    output diff,
    output borrow_out
   );
   
   assign diff = a ^ b ^ borrow;
   assign borrow_out = (~a & (b^borrow)) | (b & borrow);
endmodule
