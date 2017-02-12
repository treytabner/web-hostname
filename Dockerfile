FROM golang
COPY web-hostname.go /
RUN go build web-hostname.go
ENTRYPOINT ["/web-hostname"]
