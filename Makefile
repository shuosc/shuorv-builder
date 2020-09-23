build:
	docker build -t shuosc/shuorv-builder:latest .
push: build
	docker push shuosc/shuorv-builder:latest

