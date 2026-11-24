// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen
// by writing 'black' in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen by writing
// 'white' in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(LISTEN)
    // Reset pointer 'addr' to the start of the screen (16384)
    @SCREEN
    D=A
    @addr
    M=D

    // Check keyboard state
    @KBD
    D=M
    @SET_WHITE
    D;JEQ           // If KBD == 0 (no key pressed), jump to SET_WHITE

    // Otherwise, set target color to black (-1)
    @color
    M=-1
    @PAINT_LOOP
    0;JMP

(SET_WHITE)
    // Set target color to white (0)
    @color
    M=0

(PAINT_LOOP)
    // Check if we've reached the end of screen memory (addr == KBD / 24576)
    @addr
    D=M
    @KBD
    D=D-A           // D = current_address - 24576
    @LISTEN
    D;JEQ           // If addr == 24576, screen is done; go listen again

    // Write the chosen color (0 or -1) into RAM[addr]
    @color
    D=M             // Load color into D
    @addr
    A=M             // Set A to the memory address stored in 'addr' (Pointer dereferencing)
    M=D             // RAM[addr] = color

    // Advance pointer to the next 16-bit word: addr++
    @addr
    M=M+1

    @PAINT_LOOP
    0;JMP