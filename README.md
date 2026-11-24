# n2t

A workspace for **Nand to Tetris** (*The Elements of Computing Systems: Building a Modern Computer from First Principles* by Noam Nisan and Shimon Schocken). 

---

## Repository Structure

```text
tadcomp/
├── hdlfiles/                       # Personal HDL chip implementations (Chapters 1–3)
│   ├── 01/                         # Basic Boolean logic gates
│   ├── 02/                         # Boolean arithmetic & ALU
│   └── 03/                         # Sequential logic, registers, RAM, and PC
├── notes/                          # Study notes
│   ├── chapter2.pdf                # Boolean Arithmetic notes
│   └── chapter3.pdf                # Sequential Logic notes
├── important_figures/              # Textbook architecture & API reference diagrams
│   ├── Hardware/                   # CPU, Computer, Memory, Screen & Keyboard interfaces
│   ├── Assembler/                  # Assembler Parser & Symbol Table diagrams
│   ├── VM/                         # Stack, memory segments, branching, function calls & implementation
│   └── Jack_code/                  # High-level Jack language examples
├── nand2tetris/                    # Official Nand2Tetris course files, tools & projects
│   ├── projects/                   # Projects 0 through 13 (tests, templates & implementations)
│   └── tools/                      # Java-based simulators, emulators, assembler & compiler
├── Hardware Simulator Tutorial.pdf # Guide to using the Nand2Tetris Hardware Simulator
└── Nand to Tetris syllabus.pdf     # Course syllabus and project roadmap
```

---


## Study Materials & References

- **Course Documents**: [Hardware Simulator Tutorial.pdf](./Hardware%20Simulator%20Tutorial.pdf) and [Nand to Tetris syllabus.pdf](./Nand%20to%20Tetris%20syllabus.pdf)
- **Notes**: Chapter notes in [`notes/`](./notes/) (`chapter2.pdf`, `chapter3.pdf`)
- **Diagrams**: Reference figures for Hardware, Assembler, VM, and Jack in [`important_figures/`](./important_figures/)
- **Official Website**: [nand2tetris.org](https://www.nand2tetris.org/)
