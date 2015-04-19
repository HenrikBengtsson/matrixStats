x <- 1:200
mu <- double(length(x))
mu[1:50] <- 5
mu[101:150] <- -5
y <- mu + rnorm(length(x))

# Binning
bx <- c(0,50,100,150,200)+0.5
yS <- binMeans(y, x=x, bx=bx)

plot(x,y)
for (kk in seq(along=yS)) {
  lines(bx[c(kk,kk+1)], yS[c(kk,kk)], col="blue", lwd=2)
}
