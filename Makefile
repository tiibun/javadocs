
default:

openjdk:
	docker run -v $PWD:/usr/src -w /usr/src openjdk:8 bash openjdk.sh
