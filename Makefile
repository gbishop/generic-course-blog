all:
	blogofile build
	killall blogofile
	blogofile serve 8080 yes

