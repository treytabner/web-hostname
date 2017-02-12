FROM alpine
RUN apk add --update-cache libc-dev go
COPY web-hostname.go /
RUN go build web-hostname.go && rm web-hostname.go
EXPOSE 80
ENTRYPOINT ["/web-hostname"]
