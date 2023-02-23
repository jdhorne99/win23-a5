#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

# Test 01: Test division of two positive numbers
if [[ $($CALCULATOR 10 / 2) -ne 5 ]]; then  # If the output of the program is not 5...
  echo 'ERROR! A valid run of the calculator (10 / 2) failed to produce 5 as an output!'
  exit 1
fi

# Test 02: Test division of two negative numbers
if [[ $($CALCULATOR 20 / -10) -ne -2 ]]; then  # If the output of the program is not -2...
  echo 'ERROR! A valid run of the calculator (20 / -10) failed to produce -2 as an output!'
  exit 1
fi

# Test 03: Test division by one
if [[ $($CALCULATOR 10 / 1) -ne 10 ]]; then  # If the output of the program is not 10...
  echo 'ERROR! A valid run of the calculator (10 / 1) failed to produce 10 as an output!'
  exit 1
fi

# Test 04: Test multiplication by zero
if $CALCULATOR 10 / 0; then  # If the return code of $PROGRAM is zero (i.e. success)...
  echo 'ERROR! An ivalid run of the program (10 / 0) apparently succeeded?!'
  exit 1
fi
