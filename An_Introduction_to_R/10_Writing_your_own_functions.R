# 10. Writing your own functions
# ------------------------------

twosam <- function(y1, y2) {
  n1  <- length(y1); n2 <- length(y2)
  yb1 <- mean(y1);   yb2 <- mean(y2)
  s1 <- var(y1);     s2 <- var(y2)
  s <- ((n1-1)*s1 + (n2-1)*s2)/(n1+n2-2)
  tst <- (yb1 - yb2)/sqrt(s*(1/n1 + 1/n2))
  tst
}

# 10.5 Assignments within functions
# ---------------------------------
# Ordinary assignments done within the function are local and temporary and
# are lost after exit from the function.

# If global and permanent assignments are intended within a function, then
# either the superassigment operator, <<- or the function assign() can be
# used.
