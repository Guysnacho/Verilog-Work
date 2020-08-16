/**
* starter.v
*
* Serial Peripheral Interface (SPI)
*
* Implement both sides of a SPI interface.
*
*/

module master_device(DATA_ADDR, SS_ADDR, SCLK, MOSI, MISO, SS);
// I/O PORTS (DO NOT MODIFY)
input         MISO;
output        MOSI, SCLK;
input   [1:0] SS_ADDR;
output  [3:0] SS;
input   [7:0] DATA_ADDR;

reg [7:0] DATA;

// ADD COMBINATIONAL LOGIC HERE

always@(DATA_ADDR, SS_ADDR)
begin
  // ADD SEQUENTIAL LOGIC HERE

end

endmodule

module slave_device(SCLK, MOSI, MISO, SS);
// I/O PORTS (DO NOT MODIFY)
input       MOSI, SCLK, SS;
output  reg MISO;

// INTERNAL DATA REGISTERS (DO NOT MODIFY)
reg [7:0] reg0 = 8'h41; // Address = 8'h1A
reg [7:0] reg1 = 8'hDC; // Address = 8'h1B
reg [7:0] reg2 = 8'h3B; // Address = 8'h1C
reg [7:0] reg3 = 8'h4E; // Address = 8'h1D
reg [7:0] reg4 = 8'h8C; // Address = 8'h2A
reg [7:0] reg5 = 8'hB5; // Address = 8'h2B
reg [7:0] reg6 = 8'h05; // Address = 8'h2C
reg [7:0] reg7 = 8'hE5; // Address = 8'h2D

// ADD YOUR CODE HERE

endmodule
