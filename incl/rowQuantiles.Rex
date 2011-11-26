set.seed(1)

x <- matrix(rnorm(50*40), nrow=50, ncol=40)
str(x)

probs <- c(0.25,0.5,0.75)

# Row quantiles
q <- rowQuantiles(x, probs=probs)
print(q)
q0 <- apply(x, MARGIN=1, FUN=quantile, probs=probs)
stopifnot(all.equal(q0, t(q)))

# Column IQRs
q <- colQuantiles(x, probs=probs)
print(q)
q0 <- apply(x, MARGIN=2, FUN=quantile, probs=probs)
stopifnot(all.equal(q0, t(q)))
