module register_file (
  input clock,
  input reset,
  input wEn, 
  input [31:0] write_data,
  input [4:0] read_sel1,
  input [4:0] read_sel2,
  input [4:0] write_sel,
  output [31:0] read_data1,
  output [31:0] read_data2
);

reg   [31:0] reg_file[0:31];

assign read_data1 = reg_file[read_sel1];
assign read_data2 = reg_file[read_sel2];
integer i; 

always @(posedge clock)
begin
    if(reset)
    begin
        for(i=0; i<32; i=i+1) begin
            reg_file[i] <= 32'b0;
        end
    end
    
    else if( (wEn == 1) && (write_sel != 5'b0))
    begin
        reg_file[write_sel] <= write_data;
    end
    
end

endmodule