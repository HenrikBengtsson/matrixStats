x <- 1:200
mu <- double(length(x))
mu[1:50] <- 5
mu[101:150] <- -5
y <- mu + rnorm(length(x))
outliers <- c(25:30,175:180)
y[outliers] <- y[outliers] - 5

# Binning
bx <- c(0,50,100,150,200)+0.5
yS <- binMeans(y, x=x, bx=bx)

# Plot
plot(x,y)
for (kk in seq(along=yS)) {
  lines(bx[c(kk,kk+1)], yS[c(kk,kk)], col="blue", lwd=2)
}

# Weighted binning
w <- rep(1, times=length(x))
w[outliers] <- 0.1  # Down-weight outliers
ySw <- binMeans(y, w=w, x=x, bx=bx)

for (kk in seq(along=yS)) {
  lines(bx[c(kk,kk+1)], ySw[c(kk,kk)], col="red", lwd=2)
}
