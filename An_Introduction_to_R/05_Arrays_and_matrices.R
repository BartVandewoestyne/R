# 5. Arrays and matrices
# ----------------------

# 5.1 Arrays -> column major order = Fortran
# ------------------------------------------

# Create a vector of 1500 elements and give it the dim attribute that allows
# it to be treated as a 3 by 5 by 100 array.
# (more natural assignments can be made with matrix() and array().)
z <- 1:1500
dim(z) <- c(3,5,100)

# 5.2 Array indexing.  Subsections of an array.
# ---------------------------------------------
a[2,,]

# 5.3 Index arrays
# ----------------

# Generate a 4 by 5 array.
x <- array(1:20, dim=c(4,5))
x

# i is a 3 by 2 index array.
i <- array(c(1:3,3:1), dim=c(3,2))
i

# Extract the elements.
x[i]

# Replace the elements by zero.
x[i] <- 0
x

# 5.4 The array() function
# ------------------------

# The size of the vector is exactly fitted
h <- 1:24
Z <- array(h, dim=c(3,4,2))
dim(Z) <- c(3,4,2)

# The size of the vector does not exactly fit.  We recycle from the beginning
# to make it the correct size.
Z <- array(0, c(3,4,2))

dim(Z)  # dimension vector
Z[1:24] # data vector as it was in h
Z[]     # entire array as an array
Z       # entire array as an array

# 5.4.1 Mixed vector and array arithmetic.  The recycling rule.


# 5.5 The outer product of two arrays
# -----------------------------------
d <- outer(0:9, 0:9)
fr <- table(outer(d, d, "-"))
plot(as.numeric(names(fr)), fr, type="h", xlab="Determinant", ylab="Frequency")

# 5.6 Generalized transpose of an array
# -------------------------------------

B <- aperm(A, c(2,1))
B <- t(A)

# 5.7 Matrix facilities
# ---------------------

t(X)    # transpose
nrow(A) # number of rows of A
ncol(A) # number of colums of A

# 5.7.1 Matrix multiplication
# ---------------------------

A*B             # element by element products
A %*% B         # matrix product
x %*% A %*% x   # quadratic form

crossprod(X, y)

diag(v)
diag(M)

# 5.7.2 Linear equations and inversion
# ------------------------------------

solve(A, b)     # solve system
solve(A)        # compute inverse of A

# 5.7.3 Eigenvalues and eigenvectors
# ----------------------------------

ev <- eigen(Sm)

# 5.7.4 Singular value decomposition and determinants
# ---------------------------------------------------

svd(M)

# matrix()
