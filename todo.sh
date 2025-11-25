#!/bin/bash
TASK_FILE="task.txt"
touch "$TASK_FILE"

case "$1" in 
   add)

      if [ -z "$2" ]; then  # -z means string is empty
       echo "no task"
       exit 1
fi

# APPEND TASK
echo "$2" >> "$TASK_FILE"   # "$2" is the second argument
echo "tasks added: $2"
;;
list)
     if [ ! -s "$TASK_FILE" ]; then # ! meaning it overall is true even the resulsts is false.
       echo "no task"
       exit 0
       fi
       nl -w1 -s". " "$TASK_FILE"  #nl : number line, 1w is the width.
       ;;
 delete) 
    if [ -z "$2" ]; then
       echo "task number"
       exit 1                  #m exit 1 means if the condition is true the script terminate with a status code of 1.
    fi
    
    sed -i '' "${2}d" "$TASK_FILE"  # ${2}d its a sed command for delete
        echo " delete task: $2"
        ;;
*)
echo "usage: ./todo.sh add \"task description\""
   echo "    ./todo.sh list"
   echo      ./todo.sh delete
exit 1
;;
esac

