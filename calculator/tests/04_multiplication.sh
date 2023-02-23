#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

# Test 01: Test multiplication of two positive numbers
if [[ $($CALCULATOR 2 '*' 5) -ne 10 ]]; then  # If the output of the program is not 10...
  echo 'ERROR! A valid run of the calculator (2 * 5) failed to produce 10 as an output!'
  exit 1
fi

# Test 02: Test multiplication of two negative numbers
if [[ $($CALCULATOR 2 '*' -2) -ne 4 ]]; then  # If the output of the program is not 4...
  echo 'ERROR! A valid run of the calculator (2 * -2) failed to produce 4 as an output!'
  exit 1
fi

# Test 03: Test multiplication by one
if [[ $($CALCULATOR 10 '*' 1) -ne 10 ]]; then  # If the output of the program is not 10...
  echo 'ERROR! A valid run of the calculator (10 * 1) failed to produce 10 as an output!'
  exit 1
fi

# Test 04: Test multiplication by zero
if [[ $($CALCULATOR 10 '*' 0) -ne 0 ]]; then  # If the output of the program is not 0...
  echo 'ERROR! A valid run of the calculator (10 * 0) failed to produce 0 as an output!'
  exit 1
fi
