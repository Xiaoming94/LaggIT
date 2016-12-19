package main

import (
	"time"
)

type LEvent struct {
	Title  string    `json:"title"`
	Time   time.Time `json:"time"`
	Place  string    `json:"place"`
	Price  int       `json:"price"`
	Info   string    `json:"info"`
	IsOpen bool      `json:"is_open"`
	Image  string    `json:"image"` // The source of the image
}

type Levents []LEvent
