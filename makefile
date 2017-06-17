IMAGE = brbellissimo/hello-web

app:
	CGO_ENABLED=0 GOOS=linux go build -o hello-web -a -installsuffix cgo -ldflags '-extldflags "-static" -s' main.go

docker:
	docker build -t $(IMAGE) .
	docker push $(IMAGE)