`timescale 1ns/1ps
`define REG_WIDTH 32
`define ALU_OPSEL_WIDTH 6

`define BS 3'b000
`define ADDSUB 3'b001
`define MUL 3'b010
`define DIV 3'b011
`define LOGIC 3'b100

`define ADDSUB_USLESS_DIAP 5:4
`define MUL_USLESS_DIAP 5:3
`define DIV_USLESS_DIAP 5:3
`define LOGIC_USLESS_DIAP 5

`define BS_DIAP 5:3
`define BS_SA_DIAP 4:0
`define ADDSUB_DIAP 3
`define LOGIC_DIAP 4:3

`define ALU_OP_DIAP 2:0
