#!/bin/bash

echo "Enter the first number: "
read a
echo "Enter the second number: "
read b

# Addition
addition=$(echo "$a + $b" | bc)

# Subtraction
subtraction=$(echo "$a - $b" | bc)

# Multiplication
multiplication=$(echo "$a * $b" | bc)

# Division
if [ "$b" -ne 0 ]; then
    division=$(echo "scale=2; $a / $b" | bc)
else
    division="undefined (division by zero)"
fi

echo "Addition: $a + $b = $addition"
echo "Subtraction: $a - $b = $subtraction"
echo "Multiplication: $a * $b = $multiplication"
echo "Division: $a / $b = $division"
