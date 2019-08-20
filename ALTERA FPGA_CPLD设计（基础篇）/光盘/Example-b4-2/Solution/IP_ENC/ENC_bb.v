// Generated by ed8b10b 1.4.0 [Altera, IP Toolbench v1.2.3 build12]
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
// ************************************************************
// Copyright (C) 1991-2004 Altera Corporation
// Any megafunction design, and related net list (encrypted or decrypted),
// support information, device programming or simulation file, and any other
// associated documentation or information provided by Altera or a partner
// under Altera's Megafunction Partnership Program may be used only to
// program PLD devices (but not masked PLD devices) from Altera.  Any other
// use of such megafunction design, net list, support information, device
// programming or simulation file, or any other related documentation or
// information is prohibited for any other purpose, including, but not
// limited to modification, reverse engineering, de-compiling, or use with
// any other silicon devices, unless such use is explicitly licensed under
// a separate agreement with Altera or a megafunction partner.  Title to
// the intellectual property, including patents, copyrights, trademarks,
// trade secrets, or maskworks, embodied in any such megafunction design,
// net list, support information, device programming or simulation file, or
// any other related documentation or information provided by Altera or a
// megafunction partner, remains with Altera, the megafunction partner, or
// their respective licensors.  No other licenses, including any licenses
// needed under any third party's intellectual property, are provided herein.

module ENC (
	clk,
	reset_n,
	idle_ins,
	kin,
	ena,
	datain,
	rdin,
	rdforce,
	kerr,
	dataout,
	valid,
	rdout,
	rdcascade);

	input		clk;
	input		reset_n;
	input		idle_ins;
	input		kin;
	input		ena;
	input	[7:0]	datain;
	input		rdin;
	input		rdforce;
	output		kerr;
	output	[9:0]	dataout;
	output		valid;
	output		rdout;
	output		rdcascade;
endmodule
