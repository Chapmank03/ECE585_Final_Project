module read_data ();

integer data_file;
integer scan_data;
reg [31:0] data_h;
reg [3:0] instruction_h;
wire [31:0] data_b;
wire [3:0] instruction_b;
reg clk;
wire [31:0] data_out; //data used for data cache
wire [3:0] instruction_out; //data used for instruction cache



initial begin
clk = 1'b0;
data_file = $fopen("input_file.txt", "r");
if(data_file == 0) begin
$display("data_file is null");
$finish;
end
else
#230 $finish;
end

always begin
#5 clk = ~clk;
end

always @(posedge clk) begin
scan_data = $fscanf(data_file, "%h%h", instruction_h, data_h);
end

hextobinary I(instruction_h, instruction_b);
hextobinary D0(data_h[3:0], data_b[3:0]);
hextobinary D1(data_h[7:4], data_b[7:4]);
hextobinary D2(data_h[11:8], data_b[11:8]);
hextobinary D3(data_h[15:12], data_b[15:12]);
hextobinary D4(data_h[19:16], data_b[19:16]);
hextobinary D5(data_h[23:20], data_b[23:20]);
hextobinary D6(data_h[27:24], data_b[27:24]);
hextobinary D7(data_h[31:28], data_b[31:28]);

assign data_out = data_b;
assign instruction_out = instruction_b;

endmodule
