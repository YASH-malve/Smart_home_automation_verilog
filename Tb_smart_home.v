`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: tb_smart
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2023 13:38:38
// Design Name: 
// Module Name: Smart_home
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


module comfort_tb();
reg clk,reset,motion_sen;
reg [5:0]temp_sen,lume_sen;
wire heater,cooler,light_high;
Comfort1 vi(
clk,reset,motion_sen,
temp_sen,lume_sen
,heater,cooler,light_high
);
initial begin
clk=1;
forever #5 clk=~clk;
end
initial begin
reset=1;
#10;
reset=0;
motion_sen=1;
temp_sen=35;
lume_sen=17;
#10;
reset=0;
motion_sen=1;
temp_sen=14;
lume_sen=17;
#10;
reset=0;
motion_sen=1;
temp_sen=31;
lume_sen=11;
#10;reset=0;
motion_sen=1;
temp_sen=32;
lume_sen=16;
#10;
reset=0;
motion_sen=1;
temp_sen=21;
lume_sen=16;
#10;
reset=0;
motion_sen=0;
temp_sen=21;
lume_sen=14;
#10;
reset=0;
motion_sen=1;
temp_sen=13;
lume_sen=12;
#10;
reset=0;
motion_sen=1;
temp_sen=35;
lume_sen=9;
#10;
reset=0;
motion_sen=1;
temp_sen=26;
lume_sen=9;
#10;
$finish;
end
endmodule
