package main

import (
	"io"
	"net/http"

	"github.com/prometheus/client_golang/prometheus/promhttp"
)

func main() {
	// Metrics
	http.Handle("/metrics", promhttp.Handler())

	// Handlers
	h1 := func(w http.ResponseWriter, _ *http.Request) {
		io.WriteString(w, "ok\n")
	}
	http.HandleFunc("/", h1)

	http.ListenAndServe(":8080", nil)
}
