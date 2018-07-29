package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	flag.Parse()
	log.Println("Hello world sample started.")

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		log.Println("Hello world received a request.")
		target := os.Getenv("TARGET")
		if target == "" {
			target = "NOT SPECIFIED"
		}
		fmt.Fprintf(w, "Hello World: %s!\n", target)
	})

	http.ListenAndServe(":8080", nil)
}
