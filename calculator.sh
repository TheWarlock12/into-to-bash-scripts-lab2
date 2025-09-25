#!/bin/bash

# Check that exactly 3 arguments were provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 <number1> <operator> <number2>"
  echo "Example: $0 5 + 3"
  exit 1
fi

num1=$1
op=$2
num2=$3

# Perform calculation
case $op in
  +)
    result=$((num1 + num2))
    ;;
  -)
    result=$((num1 - num2))
    ;;
  \*)
    result=$((num1 * num2))
    ;;
  /)
    # Handle division by zero
    if [ "$num2" -eq 0 ]; then
      echo "Error: Division by zero"
      exit 1
    fi
    result=$((num1 / num2))
    ;;
  *)
    echo "Error: Unsupported operator '$op'. Use +, -, *, or /"
    exit 1
    ;;
esac

echo "Result: $result"
