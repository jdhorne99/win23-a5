#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

# Test 01: Test positive number addition
if [[ $($CALCULATOR 1 + 1) -ne 2 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (1 + 1) failed to produce 2 as an output!'
  exit 1
fi

# Test 02: Test negative number addition
if [[ $($CALCULATOR 2 + -1) -ne 1 ]]; then  # If the output of the program is not 0.75...
  echo 'ERROR! A valid run of the calculator (2 + -1) failed to produce 1 as an output!'
  exit 1
fi

# Test 03: Test addition of zero
if [[ $($CALCULATOR 1 + 0) -ne 1 ]]; then  # If the output of the program is not 1...
  echo 'ERROR! A valid run of the calculator (1 + 0) failed to produce 1 as an output!'
  exit 1
fi
