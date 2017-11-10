# EZ_ASM
This repo contains a set of scripts and templates that act as a wrapper around `nasm` and `ld` that make it very easy to write quick assembly snippets for x86 and x86_64 on Linux. I wanted something easy to use like [this online emulator](http://carlosrafaelgn.com.br/asm86/) but actually supports all of the x86 instructions. 

## Usage
32-bit x86: `./assemble32 yourfile.asm`   
64-bit x86: `./assemble64 yourfile.asm`

## Dependencies: 
* [nasm](http://www.nasm.us/)  
* [ld](https://en.wikipedia.org/wiki/GNU_linker) (included with most Linux distros.)

## Reccomended Workflow
WIP - But basically use GDB and [this](https://github.com/cyrus-and/gdb-dashboard)


