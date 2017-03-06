## Subset of ARM ISA Available
We are only implementing the required opcodes necessary to run the programs that I have written in Project Assembly.
The subset included in our project is denoted below.

## Total opcodes: 17
* add: add
* b: branch (x)
* beq: branch if equal (x)
* bl: branch with link (another file) (x)
* ble: branch if less (x)
* bne: branch if not equal (x)
* cmp: compare
* ldmfd: load multiple full descending
* ldr: load word (x)
* ldrb: load zero extended byte
* mov: move
* nop: no operation
* stmfd: store multiple full descending
* str: store (x)
* sub: subtract
* subs: subtract, copy SPSR (save prog SR) to CPSR (curr prog SR)
* swi: software interrupt
* swp: swap

## Opcode Layout

The 32-Bit opcode will be broken down as follows:
* 5 bits, [31:27] - Instruction, this will also allow for expansion as it can hold up to 31 unique opcodes
* 27 bits [26:0] - These bits will be used differently by each opcode, but will at max be divided among 3 components, thus have 9 bits each.

## ISA Breakdown
### Load/store
|oper [31:27]   | dest [26:13] | addr [12:0]|
|:----:|:----:|:----:|
|ldr   | dest | addr |
|str   | src  | addr |

### Branching
|oper [31:27] | label [26:0] |
|:-----------:|:-----:|
|b            | label |
|beq          | label |
|bl           | label |
|ble          | label |
|bne          | label |
