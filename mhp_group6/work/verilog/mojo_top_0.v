/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip,
    output reg a,
    output reg b,
    output reg cin,
    input sum,
    input cout
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_mhp_1d_a;
  wire [1-1:0] M_mhp_1d_b;
  wire [1-1:0] M_mhp_1d_cin;
  wire [8-1:0] M_mhp_1d_indicator;
  wire [8-1:0] M_mhp_1d_manualtestcheck;
  wire [8-1:0] M_mhp_1d_manualtestnum;
  wire [8-1:0] M_mhp_1d_manualerror;
  reg [1-1:0] M_mhp_1d_sum;
  reg [1-1:0] M_mhp_1d_cout;
  reg [1-1:0] M_mhp_1d_autotoggle;
  reg [1-1:0] M_mhp_1d_manuala;
  reg [1-1:0] M_mhp_1d_manualb;
  reg [1-1:0] M_mhp_1d_manualcin;
  mhp_1d_2 mhp_1d (
    .clk(clk),
    .rst(rst),
    .sum(M_mhp_1d_sum),
    .cout(M_mhp_1d_cout),
    .autotoggle(M_mhp_1d_autotoggle),
    .manuala(M_mhp_1d_manuala),
    .manualb(M_mhp_1d_manualb),
    .manualcin(M_mhp_1d_manualcin),
    .a(M_mhp_1d_a),
    .b(M_mhp_1d_b),
    .cin(M_mhp_1d_cin),
    .indicator(M_mhp_1d_indicator),
    .manualtestcheck(M_mhp_1d_manualtestcheck),
    .manualtestnum(M_mhp_1d_manualtestnum),
    .manualerror(M_mhp_1d_manualerror)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = M_mhp_1d_indicator;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    a = M_mhp_1d_a;
    b = M_mhp_1d_b;
    cin = M_mhp_1d_cin;
    M_mhp_1d_sum = sum;
    M_mhp_1d_cout = cout;
    M_mhp_1d_autotoggle = io_dip[16+7+0-:1];
    M_mhp_1d_manuala = io_dip[0+0+0-:1];
    M_mhp_1d_manualb = io_dip[0+1+0-:1];
    M_mhp_1d_manualcin = io_dip[0+2+0-:1];
    io_led = {{4'h8{M_mhp_1d_cin}}, {4'h8{M_mhp_1d_b}}, {4'h8{M_mhp_1d_a}}};
    io_seg = 8'hff;
    io_sel = 4'hf;
  end
endmodule
