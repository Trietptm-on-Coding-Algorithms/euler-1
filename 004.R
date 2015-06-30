source("Euler.R");

max <- 0;

for(i in 100:999) {
	for(j in 100:999) {
		p <- i * j;
		if (is.palindromic(p) && p > max) {
			max <- p;
		}
	}
}

cat(max);