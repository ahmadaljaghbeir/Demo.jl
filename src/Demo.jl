export add_matrices, subtract_matrices, multiply_matrices, determinant

"""Addition of two matrices"""
function add_matrices(A::Matrix, B::Matrix)
    size(A) == size(B) || throw(ArgumentError("Matrix dimensions must match"))
    return A + B
end

"""Subtraction of two matrices"""
function subtract_matrices(A::Matrix, B::Matrix)
    size(A) == size(B) || throw(ArgumentError("Matrix dimensions must match"))
    return A - B
end

"""Multiplication of two matrices"""
function multiply_matrices(A::Matrix, B::Matrix)
    size(A, 2) == size(B, 1) || throw(ArgumentError("Matrix dimensions incompatible for multiplication"))
    return A * B
end

"""Determinant of a square matrix"""
function determinant(A::Matrix)
    is_square(A) || throw(ArgumentError("Matrix must be square for determinant calculation"))
    return det(A)
end

end # module