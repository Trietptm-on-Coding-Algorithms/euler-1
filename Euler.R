# Euler.R
# =======

primefact <- function(n) {
	d <- c()
	div <- 2; nxt <- 3; rest <- n
	while (rest != 1) {
		while(rest%%div == 0) {
			d <- c(d, div)
			rest <- floor(rest / div)
		}
		div <- nxt
		nxt <- nxt + 2
	}
	return (d)
}

is.palindromic <- function(x, base=10)
{
	p <- 0
	m <- floor(log(x,base))
	sig <- -1
	for (i in m:0)
		{
		tp <- floor(x/base^i)
		a <- i+1
		b <- m+1-i
		if(a==b){c<-0}else{c<-a*b;sig<-sig*-1}
		p <- p + tp*c*sig
		x <- x - tp*base^i
		}
	return(!as.logical(p))
}