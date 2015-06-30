# Euler.R
# =======

primefact <- function(n) {
	# recommended for numbers up to 10^25
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