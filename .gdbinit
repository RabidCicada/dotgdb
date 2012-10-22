
# __________________gdb options_________________

# set to 0 if you have problems with the colorized prompt - reported by Plouj with Ubuntu gdb 7.2
set $COLOUREDPROMPT = 1
# Colour the first line of the disassembly - default is green, if you want to change it search for
# SETCOLOUR1STLINE and modify it :-)
set $SETCOLOUR1STLINE = 0
# set to 0 to remove display of objectivec messages (default is 1)
set $SHOWOBJECTIVEC = 1
# set to 0 to remove display of cpu registers (default is 1)
set $SHOWCPUREGISTERS = 1
# set to 1 to enable display of stack (default is 0)
set $SHOWSTACK = 0
# set to 1 to enable display of data window (default is 0)
set $SHOWDATAWIN = 0
# set to 0 to disable coloured display of changed registers
set $SHOWREGCHANGES = 1
# set to 1 so skip command to execute the instruction at the new location
# by default it EIP/RIP will be modified and update the new context but not execute the instruction
set $SKIPEXECUTE = 0
# if $SKIPEXECUTE is 1 configure the type of execution
# 1 = use stepo (do not get into calls), 0 = use stepi (step into calls)
set $SKIPSTEP = 1
# show the ARM opcodes - change to 0 if you don't want such thing (in x/i command)
set $ARMOPCODES = 1
# x86 disassembly flavor: 0 for Intel, 1 for AT&T
set $X86FLAVOR = 0

set $displayobjectivec = 0

set confirm off
set verbose off

set output-radix 0x10
set input-radix 0x10

# These make gdb never pause in its output
set height 0
set width 0

set $SHOW_CONTEXT = 1
set $SHOW_NEST_INSN = 0

set $CONTEXTSIZE_STACK = 6
set $CONTEXTSIZE_DATA  = 8
set $CONTEXTSIZE_CODE  = 8

# __________________end gdb options_________________
#

if $COLOUREDPROMPT == 1
   	set prompt \033[31mgdb$ \033[0m
end

source ~/.gdb/setup
source ~/.gdb/window
source ~/.gdb/cpu
source ~/.gdb/data
source ~/.gdb/process
source ~/.gdb/datawin
source ~/.gdb/dumpjump
source ~/.gdb/patch
source ~/.gdb/tracing
source ~/.gdb/misc
source ~/.gdb/info
source ~/.gdb/tips

# Configuration options specific to local machine. This file is not in the
# repository.
source ~/.gdbinit.local

#EOF
