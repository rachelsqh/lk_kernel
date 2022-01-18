
#!/bin/bash

COMMAND="$@"
DEBUG_FS=/sys/kernel/debug

$COMMAND ./elf_an


cat $DEBUG_FS/tracing/trace

cp $DEBUG_FS/tracing/trace ./elf_an.ftrace
echo 0 > $DEBUG_FS/tracing/tracing_on
#echo -1 > $DEBUG_FS/tracing/set_ftrace_pid
echo '' > $DEBUG_FS/tracing/set_ftrace_filter
echo 'nop' > $DEBUG_FS/tracing/current_tracer

