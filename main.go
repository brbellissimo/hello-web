package main

import (
	"fmt"
	"io"
	"net/http"
)

func hello(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "Hello world!")
}

func main() {
	fmt.Println("Hello")
	http.HandleFunc("/", hello)
	http.ListenAndServe(":80", nil)
}
