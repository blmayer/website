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
	Age          int
}

var (
	morningColours = colours{"AliceBlue", "DarkSlateBlue", "IndianRed", ""}
	dayColours     = colours{"BlanchedAlmond", "Teal", "Salmon", ""}
	nightColours   = colours{"#101010", "LawnGreen", "Fuchsia", ""}

	birth = time.Date(1992, 02, 19, 17, 00, 00, 0, time.UTC)

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
	path := r.URL.Path[1:]
	if path == "" {
		path = "index.html"
	}

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
