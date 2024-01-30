D_discs <- seq(1, 6)
M_discs <- c(1.22, 4.90, 10.40, 19.52, 30.71, 43.75)
plot(D_discs, M_discs, pch = 18, xlab = "D[cm]", ylab = "m[g]")
lines(D_discs, M_discs)
# Linealization of Discs
z = (D_discs)^2
data.frame(z, M_discs)
plot(z, M_discs, pch = 18, xlab = "D^2[cm^2]", ylab = "m[g]")
lines(z, M_discs)
# Least Squares
x = z
y = M_discs
XY = x * y
X2 = x^2
Y2 = y^2
data.frame(x, y, XY, X2, Y2)
A = (sum(y) * sum(X2) - sum(XY) * sum(x)) / (length(x) * sum(X2) - (sum(x))^2)
B = (length(x) * sum(XY) - sum(x) * sum(y)) / (length(x) * sum(X2) - (sum(x))^2)
y1 = A + B * x
plot(x, y, pch = 18, xlab = "D^2[cm^2]", ylab = "m[g]")
lines(x, y1, col = "#000033")

sigma_A = sqrt((((sum((y - y1)^2))/(length(x) - 2)) * sum(X2))/(length(x) * sum(X2) - (sum(x))^2))
sigma_B = sqrt((((sum((y - y1)^2))/(length(x) - 2)) * length(x))/(length(x) * sum(X2) - (sum(x))^2))
r = (length(x) * sum(XY) - sum(x) * sum(y)) / (sqrt((length(x) * sum(X2) - (sum(x))^2) * (length(x) * sum(Y2) - (sum(y))^2)))