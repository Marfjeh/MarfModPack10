FROM golang:1.22
WORKDIR /data
RUN go install github.com/packwiz/packwiz@latest

VOLUME ["/data"]
EXPOSE 8080/tcp

ENTRYPOINT ["/go/bin/packwiz", "serve"]

