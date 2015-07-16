.PHONY: build run

all: build run

build: Dockerfile
	docker build -t rootshell -f Dockerfile .

run:
	docker run -v $(PWD):/host rootshell
