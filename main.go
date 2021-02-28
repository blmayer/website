package main

import (
	"embed"
	"net/http"
)

//go:embed static/*
var pages embed.FS

func main() {
	http.HandleFunc("/", handler)

	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		println(err.Error())
		return
	}
}

func handler(w http.ResponseWriter, r *http.Request) {
	var content []byte
	var err error
	switch r.URL.Path {
	case "/":
		content, err = pages.ReadFile("static/index.html")
	default:
		content, err = pages.ReadFile("static" + r.URL.Path)
	}

	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
	w.Write(content)
}
