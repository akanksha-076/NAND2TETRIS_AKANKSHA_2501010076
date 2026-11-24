# Hack Computer + Two-Pass Assembler (Nand2Tetris Capstone)

A bootable Hack computer written in Nand2Tetris HDL, plus a two-pass Python assembler.
The system runs a keyboard-echo program on the simulated screen.

## Folder structure
- `hdl/` - Memory, CPU, Computer chips and test scripts
- `assembler/` - assembler.py and test_assembler.py
- `programs/` - Echo.asm and Echo.hack
- `screenshots/` - test and demo evidence
- `docs/` - design.md and testing.md

## How to run
1. Run the assembler tests: `cd assembler` then `python test_assembler.py`
2. Assemble the echo program: `python assembler/assembler.py programs/Echo.asm`
3. Open the Nand2Tetris Hardware Simulator, load `hdl/Computer.hdl`
4. Load `programs/Echo.hack` into the ROM32K and press Run
5. Click the keyboard and press keys; the pressed key's bit pattern appears on screen

## Results
All chip test scripts pass and the assembler output matches the official Nand2Tetris assembler.
See `screenshots/` and `docs/testing.md`.

## Lessons learned
- Two passes are needed so that labels used before they are defined (forward references) resolve correctly.
- A label points to the NEXT instruction, so it must not increase the ROM address counter.
- The CPU jump logic depends on correctly mapping j1, j2, j3 to the ALU's ng and zr outputs.

## Future improvements
- Draw real letter shapes using a font table instead of raw key bit patterns
- Wrap the cursor at the end of the screen and support backspace
- Add support for more error messages with line numbers in the assembler