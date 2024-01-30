H_cylinders <- seq(1, 6)
M_cylinders <- c(8.65, 17.30, 25.95, 34.63, 43.31, 51.95)
plot(H_cylinders, M_cylinders, pch = 18, xlab = "H[cm]", ylab = "m[g]")
lines(H_cylinders, M_cylinders)
# Least Squares
x = H_cylinders
y = M_cylinders
XY = x * y
X2 = x^2
Y2 = y^2
data.frame(x, y, XY, X2, Y2)
A = (sum(y) * sum(X2) - sum(XY) * sum(x)) / (length(x) * sum(X2) - (sum(x))^2)
B = (length(x) * sum(XY) - sum(x) * sum(y)) / (length(x) * sum(X2) - (sum(x))^2)
y1 = A + B * x
plot(x, y, pch = 18, xlab = "H[cm]", ylab = "m[g]")
lines(x, y1, col = "blue")

sigma_A = sqrt((((sum((y - y1)^2))/(length(x) - 2)) * sum(X2))/(length(x) * sum(X2) - (sum(x))^2))
sigma_B = sqrt((((sum((y - y1)^2))/(length(x) - 2)) * length(x))/(length(x) * sum(X2) - (sum(x))^2))
r = (length(x) * sum(XY) - sum(x) * sum(y)) / (sqrt((length(x) * sum(X2) - (sum(x))^2) * (length(x) * sum(Y2) - (sum(y))^2)))
