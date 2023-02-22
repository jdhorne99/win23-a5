#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

# Test 01: Test whole number addition
if [[ $($CALCULATOR 1 + 1) -ne 2 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (1 + 1) failed to produce 2 as an output!'
  exit 1
fi

# Test 02: Test decimal number addition
if [[ $($CALCULATOR 0.5 + 0.25) -ne 0.75 ]]; then  # If the output of the program is not 0.75...
  echo 'ERROR! A valid run of the calculator (0.5 + 0.25) failed to produce 0.75 as an output!'
  exit 1
fi

# Test 03: Test addition of zero
if [[ $($CALCULATOR 1 + 0) -ne 1 ]]; then  # If the output of the program is not 1...
  echo 'ERROR! A valid run of the calculator (1 + 0) failed to produce 1 as an output!'
  exit 1
fi
