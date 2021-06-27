FROM golang:1.16.5
RUN go env -w GO111MODULE=auto
RUN mkdir -p /go/src/exapp
WORKDIR /go/src/exapp
COPY . /go/src/exapp
EXPOSE 8080
RUN go build
CMD ["./exapp"]