#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "==================================="
echo "  Simple Interest Calculator"
echo "==================================="

# Get user input for Principal
echo -n "Enter Principal amount: "
read principal

# Get user input for Rate of Interest
echo -n "Enter Rate of Interest (per annum): "
read rate

# Get user input for Time period (in years)
echo -n "Enter Time period (in years): "
read time

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo "==================================="
echo "Results:"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "-----------------------------------"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
echo "==================================="
