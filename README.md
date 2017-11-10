# EZ_ASM
This repo contains a set of scripts and templates that act as a wrapper around `nasm` and `ld` that make it very easy to write quick assembly snippets for x86 and x86_64 on Linux. I wanted something easy to use like [this online emulator](http://carlosrafaelgn.com.br/asm86/) but actually supports all of the x86 instructions. 

## Usage
32-bit x86: `./assemble32 yourfile.asm`   
64-bit x86: `./assemble64 yourfile.asm`

## Dependencies: 
* [nasm](http://www.nasm.us/)  
* [ld](https://en.wikipedia.org/wiki/GNU_linker) (included with most Linux distros.)

## Reccomended Workflow
The workflow really is the most important thing about this whole setup, and is what makes it possible to not use the online x86 emulator.

### What I Use
[tmux](https://github.com/tmux/tmux/wiki) + [gdb](https://www.gnu.org/software/gdb/) + [gdb-dashboard](https://github.com/cyrus-and/gdb-dashboard#gdb-dashboard)  

Once you have assembeled your instructions, and you want to see what they do...  
Open two tmux panes side by side with `gdb` and `gdb-dashbard`. [You can follow these instructions for help](https://github.com/cyrus-and/gdb-dashboard#display-the-whole-dashboard-in-another-terminal)  
Now in the `gdb` prompt you can run the following commands to step through your assembly instructions:  
```
# gdb -q helloworld  
Reading symbols from helloworld...(no debugging symbols found)...done.                                                                                                           
>>> break _start
Breakpoint 1 at 0x8048080
>>> run                                                                                                   
Starting program: /home/brian/Projects/EZ_ASM/helloworld
Breakpoint 1, 0x08048080 in _start ()
>>> si
0x08048085 in _start ()
>>>[enter]
```

