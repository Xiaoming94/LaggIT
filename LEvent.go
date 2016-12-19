package main

import (
	"image"
	_ "image/gif"
	_ "image/jpeg"
	_ "image/png"
	"time"
)

type LEvent struct {
	Title  string      `json:"title"`
	Time   time.Time   `json:"time"`
	Place  string      `json:"place"`
	Price  int         `json:"price"`
	Info   string      `json:"info"`
	IsOpen bool        `json:"is_open"`
	Image  image.Image `json:"image"`
}

type Levents []LEvent
