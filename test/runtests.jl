using Test
using Demo

@test add(2, 3) == 6
@test subtract(5, 3) == 2
@test multiply(2, 3) == 6
@test divide(6, 3) == 2

# Test for division by zero
@test_throws ErrorException divide(6, 0)