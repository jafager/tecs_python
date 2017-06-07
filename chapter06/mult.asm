// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


// R2 = 0
@0
D=A
@R2
M=D

// R3 = R1
@R1
D=M
@R3
M=D

// while (R3 > 0)
(LOOP)
	@R3
	D=M
	@END
	D;JLE

	// R2 = R2 + R0
	@R0
	D=M
	@R2
	M=M+D
	
	// R3 = R3 - 1
	@R3
	M=M-1
	
	// end while
	@LOOP
	0;JMP

// exit
(END)
	@END
	0;JMP
