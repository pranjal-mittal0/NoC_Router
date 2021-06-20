#file initialization
module circular_buffer #(parameter SIZE=8, parameter FLIT_SIZE=8)(
	input [FLIT_SIZE-1:0] data_i,
	input read_i,
	input write_i,
	input rst,
	input clk,
	output [FLIT_SIZE-1:0] data_o,
	output reg full_o,
	output reg empty_o
);							
//TODO buffer cells aren't just single bits, but XX bits (XX: size of a flit)

	//function calculating base 2 logarithm
	function integer clogb2;
	input [31:0] value;
	integer i;
	begin
		clogb2 = 0;
		for(i = 0; 2**i < value; i = i + 1)
			clogb2 = i + 1;
	end
	endfunction

	//size of the pointer (as a number of bits) is the base 2 logarithm of the SIZE parameter
	localparam [32:0] POINTER_SIZE= clogb2(SIZE);

	reg [FLIT_SIZE-1:0] memory [SIZE-1:0];

	reg [POINTER_SIZE-1:0] read_ptr;
	reg [POINTER_SIZE-1:0] write_ptr;