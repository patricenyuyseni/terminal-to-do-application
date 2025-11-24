#!/bin/bash

TASK_FILE="task.txt"
touch "$TASK_FILE"
case "$1" in 
add)

if [ -z "$2" ]; then
echo "no task"
exit 1
fi

# APPEND TASK
echo "$2" >> "$TASK_FILE" # "$2" is the second argument
echo "tasks added: $2"
;;
*)
esac

