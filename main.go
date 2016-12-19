package main

import (
	"encoding/json"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

func main() {

	router := mux.NewRouter().StrictSlash(true)
	router.HandleFunc("/events", events)
	log.Fatal(http.ListenAndServe(":8082", router))
}

func events(w http.ResponseWriter, r *http.Request) {
	events := Levents{
		LEvent{
			Title: "ASP-LAN",
			Place: "ML-salar",
		},
		LEvent{
			Title: "Spelkväll",
			Place: "Hubben",
		},
	}
	w.Header().Set("Access-Control-Allow-Origin", "*")
	json.NewEncoder(w).Encode(events)
}
