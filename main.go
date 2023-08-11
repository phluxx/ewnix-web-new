package main

import (
	"net/http"
	"github.com/gorilla/mux"
)

func main() {
	r := mux.NewRouter()
	fs := http.FileServer(http.Dir("public")) // Serve Vue.js frontend files

	r.PathPrefix("/").Handler(fs)

	http.Handle("/", r)

	http.ListenAndServe(":8080", nil)
}

