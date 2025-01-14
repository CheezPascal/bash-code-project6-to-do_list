#!/bin/bash

# Simple To-Do List

todo_file="todo.txt"

while true; do
    echo "To-Do List Manager"
    echo "1. Add Task"
    echo "2. View Tasks"
    echo "3. Remove Task"
    echo "4. Exit"
    read -p "Choose an option [1-4]: " choice

    case $choice in
        1) read -p "Enter task: " task; echo "$task" >> "$todo_file";;
        2) cat -n "$todo_file";;
        3) read -p "Enter task number to remove: " task_num; sed -i "${task_num}d" "$todo_file";;
        4) exit 0;;
        *) echo "Invalid choice. Try again.";;
    esac
done
