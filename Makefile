
default:

openjdk:
	docker build -t javadoc-openjdk src/openjdk
	docker run -v ${PWD}:/usr/src -w /usr/src javadoc-openjdk
