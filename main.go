package main

import (
	"embed"
	"mime"
	"net/http"
	"strings"
	"text/template"
	"time"
)

type colours struct {
	BgColour     string
	BodyColour   string
	BorderColour string
	Age          int
}

var (
	morningColours = colours{"AliceBlue", "DarkSlateBlue", "IndianRed", 0}
	dayColours     = colours{"BlanchedAlmond", "Teal", "Salmon", 0}
	nightColours   = colours{"#101010", "LawnGreen", "Fuchsia", 0}

	birth = time.Date(1992, 02, 19, 17, 00, 00, 0, time.UTC)

	//go:embed static/*
	pages embed.FS

	temp *template.Template
)

func main() {
	var err error
	temp, err = template.ParseFS(pages, "static/*")
	if err != nil {
		panic(err)
	}

	http.HandleFunc("/", handler)

	err = http.ListenAndServe(":8080", nil)
	if err != nil {
		panic(err)
	}
}

func handler(w http.ResponseWriter, r *http.Request) {
	path := r.URL.Path[1:]
	if path == "" {
		path = "index.html"
	}

	ext := mime.TypeByExtension(path[strings.LastIndex(path, "."):])
	w.Header()["Content-Type"] = []string{ext}

	now := time.Now()
	colour := morningColours
	if now.Hour() > 20 || now.Hour() < 5 {
		colour = nightColours
	} else if now.Hour() > 11 {
		colour = dayColours
	} else {
		colour = morningColours
	}

	years := now.Sub(birth).Hours() / (24 * 365.25)
	colour.Age = int(years)

	err := temp.ExecuteTemplate(w, path, colour)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
}
