D_spheres <- c(0.713, 0.998, 1.501, 1.746, 1.905, 2.222)
M_spheres <- c(1.47, 4.50, 13.75, 21.70, 28.20, 44.75)
plot(D_spheres, M_spheres, pch = 18, xlab = "D[cm]", ylab = "m[g]")
lines(D_spheres, M_spheres)
# Linealization of Spheres
log_D_spheres = log(D_spheres)
log_M_spheres = log(M_spheres)
data.frame(log_D_spheres, log_M_spheres)
plot(log_D_spheres, log_M_spheres, pch = 18, xlab = "log( D[cm] )", ylab = "log( m[g] )")
lines(log_D_spheres, log_M_spheres)
# Least Squares
x = log_D_spheres
y = log_M_spheres
XY = x * y
X2 = x^2
Y2 = y^2
data.frame(x, y, XY, X2, Y2)
A = (sum(y) * sum(X2) - sum(XY) * sum(x)) / (length(x) * sum(X2) - (sum(x))^2)
B = (length(x) * sum(XY) - sum(x) * sum(y)) / (length(x) * sum(X2) - (sum(x))^2)
y1 = A + B * x
plot(x, y, pch = 18, xlab = "log( D[cm] )", ylab = "log( m[g] )")
lines(x, y1, col = "#000033")

sigma_A = sqrt((((sum((y - y1)^2))/(length(x) - 2)) * sum(X2))/(length(x) * sum(X2) - (sum(x))^2))
sigma_B = sqrt((((sum((y - y1)^2))/(length(x) - 2)) * length(x))/(length(x) * sum(X2) - (sum(x))^2))
r = (length(x) * sum(XY) - sum(x) * sum(y)) / (sqrt((length(x) * sum(X2) - (sum(x))^2) * (length(x) * sum(Y2) - (sum(y))^2)))