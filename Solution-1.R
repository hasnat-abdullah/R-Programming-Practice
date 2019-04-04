n <- (100+87+10-7)

a <- c(seq(5,n,5))
b <- c(seq(87,(88-length(a))))

d <- a*b

print(d[19])
print(d[20])
print(d[21])

print(d[d<2000])
print(sum(d>6000))

result.sum <- sum(d)
print(result.sum)
result.median <- median(d)
print(result.median)
result.sd <- sd(d)
print(result.sd)

w <- rev(a)
r <- rev(b)

m1 <- matrix(r[1:6], nrow = 2, ncol = 3, byrow = TRUE)
m2 <- matrix(w[1:12], nrow = 3, ncol = 4, byrow = FALSE)
M <- m1 %*% m2
print(M)