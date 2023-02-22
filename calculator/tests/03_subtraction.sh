#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

# Test 01: Test whole number subtraction
if [[ $($CALCULATOR 1 - 1) -ne 0 ]]; then  # If the output of the program is not 0...
  echo 'ERROR! A valid run of the calculator (1 - 1) failed to produce 0 as an output!'
  exit 1
fi

# Test 02: Test decimal number subtraction
if [[ $($CALCULATOR 0.5 - 0.25) -ne 0.25 ]]; then  # If the output of the program is not 0.25...
  echo 'ERROR! A valid run of the calculator (0.5 - 0.25) failed to produce 0.25 as an output!'
  exit 1
fi

# Test 03: Test subtraction of zero
if [[ $($CALCULATOR 1 - 0) -ne 1 ]]; then  # If the output of the program is not 1...
  echo 'ERROR! A valid run of the calculator (1 - 0) failed to produce 1 as an output!'
  exit 1
fi
