## Assembly Programs for CSE510
These programs are a simple way of determining the Minimum ISA components that need to be implemented.

Follow the guide below to setup ARM emulation on qemu:
http://bravegnu.org/gnu-eprog/arm-lab.html

I used the ARM package provided by Mentor Graphics which is compatible with gcc 4.8 and above.
Do not trust me for your computer's security, please verify the MD5 checksums once downloaded, then follow the instructions from the guide above.
https://sourcery.mentor.com/GNUToolchain/release2635

The goal of the project is to quickly optimize the number of unique instructions required for the problems
that Dr. Karant wanted addressed:

* [ ] Math Operations (Add, Subtract, Multiply, Divide)
* [ ] String Comparisons (Wherein chars are represented as ASCII values
* [ ] A simple bubble sort program
