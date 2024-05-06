using Test
using Demo

# Test cases for matrix addition
@test add_matrices([1 2; 3 4], [5 6; 7 8]) == [6 8; 10 12]
@test_throws ArgumentError add_matrices([1 2 3; 4 5 6], [7 8; 9 10])  # Check for dimension mismatch

# Test cases for matrix subtraction
@test subtract_matrices([5 6; 7 8], [1 2; 3 4]) == [4 4; 4 4]
@test_throws ArgumentError subtract_matrices([1 2 3; 4 5 6], [7 8; 9 10])  # Check for dimension mismatch

# Test cases for matrix multiplication
@test multiply_matrices([1 2; 3 4], [5 6; 7 8]) == [19 22; 43 50]
@test_throws ArgumentError multiply_matrices([1 2; 3 4], [5 6 7; 8 9 10])  # Check for incompatible dimensions

# Test cases for determinant calculation
@test determinant([1 2; 3 4]) == -2
@test_throws ArgumentError determinant([1 2; 3 4; 5 6])  # Check for non-square matrix

