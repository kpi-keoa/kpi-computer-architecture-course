
`timescale 1 ns / 1 ps
// synopsys translate_on
module add_j (
	dataa,
	datab,
	result);

	input	[31:0]  dataa;
	input	[31:0]  datab;
	output	[31:0]  result;

	wire [31:0] sub_wire0;
	wire [31:0] result = sub_wire0[31:0];

	lpm_add_sub	LPM_ADD_SUB_component (
				.dataa (dataa),
				.datab (datab),
				.result (sub_wire0)
				// synopsys translate_off
				,
				.aclr (),
				.add_sub (),
				.cin (),
				.clken (),
				.clock (),
				.cout (),
				.overflow ()
				// synopsys translate_on
				);
	defparam
		LPM_ADD_SUB_component.lpm_direction = "ADD",
		LPM_ADD_SUB_component.lpm_hint = "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=NO",
		LPM_ADD_SUB_component.lpm_representation = "UNSIGNED",
		LPM_ADD_SUB_component.lpm_type = "LPM_ADD_SUB",
		LPM_ADD_SUB_component.lpm_width = 32;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: CarryIn NUMERIC "0"
// Retrieval info: PRIVATE: CarryOut NUMERIC "0"
// Retrieval info: PRIVATE: ConstantA NUMERIC "0"
// Retrieval info: PRIVATE: ConstantB NUMERIC "0"
// Retrieval info: PRIVATE: Function NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV GX"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
// Retrieval info: PRIVATE: Latency NUMERIC "0"
// Retrieval info: PRIVATE: Overflow NUMERIC "0"
// Retrieval info: PRIVATE: RadixA NUMERIC "10"
// Retrieval info: PRIVATE: RadixB NUMERIC "10"
// Retrieval info: PRIVATE: Representation NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: ValidCtA NUMERIC "0"
// Retrieval info: PRIVATE: ValidCtB NUMERIC "0"
// Retrieval info: PRIVATE: WhichConstant NUMERIC "0"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: nBit NUMERIC "32"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "ADD"
// Retrieval info: CONSTANT: LPM_HINT STRING "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=NO"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_ADD_SUB"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "32"
// Retrieval info: USED_PORT: dataa 0 0 32 0 INPUT NODEFVAL "dataa[31..0]"
// Retrieval info: USED_PORT: datab 0 0 32 0 INPUT NODEFVAL "datab[31..0]"
// Retrieval info: USED_PORT: result 0 0 32 0 OUTPUT NODEFVAL "result[31..0]"
// Retrieval info: CONNECT: @dataa 0 0 32 0 dataa 0 0 32 0
// Retrieval info: CONNECT: @datab 0 0 32 0 datab 0 0 32 0
// Retrieval info: CONNECT: result 0 0 32 0 @result 0 0 32 0
// Retrieval info: GEN_FILE: TYPE_NORMAL add_j.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL add_j.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL add_j.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL add_j.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL add_j_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL add_j_bb.v TRUE
// Retrieval info: LIB_FILE: lpm
