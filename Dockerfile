FROM golang:1.16.5
RUN go env -w GO111MODULE=auto
EXPOSE 8080
RUN go build .
CMD ["./exapp"]