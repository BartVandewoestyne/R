# 3. Objects, their modes and attributes
# -------------------------------------

# 3.1 Intrinsic attributes: mode and length
# -----------------------------------------
#
#       mode(object)
#       length(object)
#       attributes(object)

# Create a complex vector of length 100 and check if its mode is indeed
# 'complex'.
z <- (1:100)*(1+2i)
mode(z)

# Create a character vector digits which is c("0", "1", ..., "9")
z <- 0:9
digits <- as.character(z)
d <- as.integer(digits)

# 3.2 Changing the length of an object
# ------------------------------------
e <- numeric()
c <- character()

e[3] <- 17

alpha <- 1:10
alpha <- alpha[2*1:5]

# 3.3 Getting and setting attributes
# ----------------------------------
#
#       attributes(object)
#       attr(object, name) selects a specific attribute

attr(z, "dim") <- c(10,10)

# 3.4 The class of an object
# --------------------------
# unclass
