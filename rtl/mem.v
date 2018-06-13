/*
* MEM Module
*
* Daniela Rivas
*/

/*
*
* clk_i: clock
* rst_i: reset signal
* mem_alu_i: ALU result
* mem_rsc2_i: registro fuente
* mem_pc_i: program counter
* mem_pc4_i: PC + 4
* mem_rd_i: entrada registro destino
* mem_we_i: write enable
* mem_re_i: read enable
* mem_rd_o: salida registro destino
* mem_stall_o: stop next module
* mem_stall_i: stop module
* mem_out_o: output module
* wbs_dat_i:
* wbs_ack_i:
* wbs_err_i:
* wbs_cyc_o:
* wbs_stb_o:
* wbs_dat_o:
* wbs_addr_o:
* wbs_we_o:
* wbs_sel_o:
*
*/

//Currently the clk_i and rst_i are only for simulation purposes

module mem(clk_i, rst_i, mem_alu_i, mem_rsc2_i, mem_pc_i, mem_pc4_i, mem_rd_i,
mem_we_i, mem_re_i, mem_stall_i, wbs_dat_i, wbs_ack_i, wbs_err_i, wbs_cyc_o,
wbs_stb_o, wbs_dat_o, wbs_addr_o, wbs_we_o, wbs_sel_o, mem_rd_o, mem_out_o,
mem_stall_o);


  input clk_i;
  input rst_i;
  input mem_we_i;
  input mem_re_i;
  input mem_stall_i;

  input [31:0] mem_rsc2_i;
  input [31:0] mem_pc_i;
  input [31:0] mem_pcf_i;
  input [31:0] mem_rd_i;
  input [31:0] mem_alu_i;
  output [31:0] mem_rd_o;
  output [31:0] mem_out_o;

  output mem_stall_o;

  wire a;
  wire b;
  wire c;
  wire d;
  wire e;

  WBU lsu(.clk_i(clk_i), .rst_i(rst_i), wbs_sel_o(a), wbm_sel_i(a),
  wbs_addr_o(b), wbm_addr_i(b), wbs_dat_o(c), wbm_dat_i(c), wbm_dat_o(d),
  wbs_dat_i(d), wbm_err_o(e), wbs_err_i(e));

  LSUcomb lsucomb(.clk_i(clk_i), .rst_i(rst_i),)

  /*
  * wbs_sel_o = wbm_sel_i;
  * wbs_addr_o = wbm_addr_i;
  * wbs_dat_o = wbm_dat_i;
  * wbm_dat_o = wbs_dat_i;
  * wbm_err_o = wbs_err_i;
  */

endmodule
