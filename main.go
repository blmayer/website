package main

import (
	"embed"
	"html/template"
	"net/http"
	"time"
)

type colours struct {
	BgColour     string
	BodyColour   string
	BorderColour string
}

var (
	morningColours = colours{"AliceBlue", "DarkSlateBlue", "IndianRed"}
	dayColours     = colours{"BlanchedAlmond", "Teal", "Salmon"}
	nightColours   = colours{"#101010", "LawnGreen", "Fuchsia"}

	//go:embed static/*
	pages embed.FS
)

func main() {
	http.HandleFunc("/", handler)

	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		println(err.Error())
		return
	}
}

func handler(w http.ResponseWriter, r *http.Request) {
	path := r.URL.Path
	if path == "/" {
		path = "index.html"
	}

	hour := time.Now().Hour()
	colour := morningColours
	if hour > 20 || hour < 5 {
		colour = nightColours
	} else if hour > 11 {
		colour = dayColours
	} else {
		colour = morningColours
	}

	temp, err := template.ParseFS(pages, "static/*")
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}

	err = temp.ExecuteTemplate(w, path, colour)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}
}
