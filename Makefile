build:
	docker build -t tresio-go-forwarder -f Dockerfile .

push: test build
	docker push airhelp/rabbit-amazon-forwarder

test:
	docker-compose run --rm tests

dev:
	go build
