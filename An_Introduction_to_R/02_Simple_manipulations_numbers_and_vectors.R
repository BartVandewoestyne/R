# 2. Simple manipulations; numbers and vectors
# --------------------------------------------

# 2.1 Vectors and assignment
# --------------------------

# Set up a numeric vector
x <- c(10.4, 5.6, 3.1, 6.4, 21.7)

# This can also be done in the following way
assign("x", c(10.4, 5.6, 3.1, 6.4, 21.7))

y <- c(x, 0, x)

# 2.2 Vector arithmetic
# ---------------------

# Dit genereert een warning
u <- c(1, 2)
v <- c(1, 2, 3)
u + v

# Dit genereert geen warning, u wordt gewoon achter zichzelf geplakt.
u <- c(1, 2)
v <- c(1, 2, 3, 4)
u + v

# 2.3 Generating regular sequences
# ----------------------------

# Using the colon operator

# These two are the same
1:3
c(1, 2, 3)

# generate a sequence backwards
10:1

# Using seq()
seq(2, 10)
seq(-5, 5, by=.2)

# Using rep()
x <- 1:2
s5 <- rep(x, times=5)

# 2.4 Logical vectors
# -------------------

# Always use TRUE and FALSE, not T and F
#
# Logical operators are:
#       <, <=, >, >=, == and !=

# Combine logical expressions as follows:
#       c1 & c2
#       c1 | c2
#       !c1

temp <- x > 13
# Any expression that evaluates to a vector may have subsets of its elements
# selected by appending an index vector in square brackets immediately after
# the expression.

# Using logical index vectors:
y <- x[!is.na(x)]

# Using a vector of positive integral quantities from the set
# {1, 2, ..., length(x)}
x[6]
x[1:10]


# 2.7 Index vectors; selecting and modifying subsets of a data set
# ----------------------------------------------------------------

# Using a vector of negative integral quantities specifies the values to
# be excluded rather than included.
x <- 1:10
y <- x[-(1:5)]

# Using a vector of character strings, which is only possible if the object
# has a names attribute to identify its components.
fruit <- c(5, 10, 1, 20)
names(fruit) <- c("orange", "banana", "apple", "peach")
lunch <- fruit[c("apple", "orange")]

# We can also use index vectors at the receiving end of an assigment
x[is.na(x)] <- 0
y[y < 0] <- -y[y < 0]
y <- abs(y)
