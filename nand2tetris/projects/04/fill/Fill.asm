// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(SCREEN)
@SCREEN
D=A
@R0
M=D


@KBD
D=M

@FILL
0;JNE

@CLEAR
0;JEQ

(FILL)
@R1
M=-1
@UPDATE
0;JMP

(CLEAR)
@R1
M=0
@UPDATE
0;JMP

(UPDATE)
@R1
D=M
@R0
A=M
M=D


