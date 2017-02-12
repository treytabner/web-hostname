package main

import (
	"io"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, req *http.Request) {
		hostname, _ := os.Hostname()
		io.WriteString(w, hostname)
	})
	http.ListenAndServe(":80", nil)
}
