FROM golang:1.16.5
RUN mkdir -p /src/go/app
WORKDIR /src/go/app
EXPOSE 8080
RUN go build
CMD ["./app"]