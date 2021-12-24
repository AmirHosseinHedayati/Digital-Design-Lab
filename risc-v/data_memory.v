module data_memory (
    input wire 	      clk,
    
    input wire [31:0] inst_add, 
    input wire [31:0] data_add, 
    input wire [31:0] mem_data_content,
  
    input wire 	      data_ReadEn, 
    input wire 	      data_writeEn, 
    output wire [31:0] mem_data_out,
    output wire [31:0] mem_inst_out 		   
);

   reg [31:0] 	    

   initial begin
      
   end

   always @(posedge clk) begin
      if (data_writeEn & !data_ReadEn) begin
	 mem[data_add] = mem_data_content;
      end
   end
   
   assign MemInstOut = mem[inst_add];
   assign MemDataOut = mem[data_add];

endmodule