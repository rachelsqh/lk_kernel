
#!/bin/bash

COMMAND="$@"
PID=$$
DEBUG_FS=/sys/kernel/debug
CURRENT_TRACER="function_graph"
SET_FUNCTION_GRAPH="__x64_sys_execve"
MAX_GRAPH_DEPTH="10"

echo $CURRENT_TRACER > $DEBUG_FS/tracing/current_tracer
echo $SET_FUNCTION_GRAPH > $DEBUG_FS/tracing/set_ftrace_filter

echo $MAX_GRAPH_DEPTH > $DEBUG_FS/tracing/max_graph_depth

echo $PID > $DEBUG_FS/tracing/set_ftrace_pid
echo "pid: "$PID
echo 1 > $DEBUG_FS/tracing/tracing_on
exec $COMMAND


