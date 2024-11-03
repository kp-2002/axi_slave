`include defines.h

module axi_slave_if #(
	parameter DATA_WIDTH=32,
	parameter ADDR_WIDTH=32
	parameter ID_W_WIDTH=2,
	parameter ID_R_WIDTH=2)(

	input                     i_axi_clk,
	//Clock associated with the interface
	input                     i_axi_rst_n,
	//Active low reset associated with the interface

	//Write request channel
	input                     i_axi_awvalid,
	output                    o_axi_awready,
	input    [ADDR_WIDTH-1:0] i_axi_awaddr,

	//Write data channel
	input                     i_axi_wvalid,
	output                    o_axi_wready,
	input    [DATA_WIDTH-1:0] i_axi_wdata,
	input  [DATA_WIDTH/8-1:0] i_axi_wstrb, 
	
	//Write response channel
	output                    o_axi_bvalid,
	input                     i_axi_bready,
	output              [1:0] o_axi_bresp,

	//Read request channel
	input                     i_axi_arvalid,
	output                    o_axi_arready,
	input    [ADDR_WIDTH-1:0] i_axi_araddr,
	
	//Read data channel
	output                    o_axi_rvalid,
	input                     i_axi_rready,
	output   [DATA_WIDTH-1:0] o_axi_rdata,
	output [DATA_WIDTH/8-1:0] o_axi_rstrb
 
	);

	

endmodule
