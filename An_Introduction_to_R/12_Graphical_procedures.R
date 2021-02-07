# 12. Graphical procedures
# ------------------------

# 12.1 High-level plotting commands
# ---------------------------------

# 12.1.1 The plot() function
# --------------------------

# Plot two vectors against each other
x <- rnorm(100, 0, 1)
y <- rnorm(100, 0, 1)
plot(x, y)

# Plot the columns of a nx2 matrix against each other
xy <- matrix(c(x, y), nrow=100, ncol=2)
plot(xy)

# Plot the values of a vector against their index
plot(x)

# 12.1.3 Display graphics
# -----------------------

qqnorm(x)
qqline(x)
qqplot(x, y)

# Histograms
hist(x)
hist(x, nclass=n)
hist(x, breaks=b)

# dotcharts
dotchart(x, ...)

# 3D plots, contours and image plots
image(x, y, z, ...)
contour(x, y, z, ...)
persp(x, y, z, ...)
