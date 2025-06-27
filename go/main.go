package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"veetoo/nitric/go/client"
	"veetoo/pkg/middleware"
)

func main() {
	router := http.NewServeMux()

	nitric, err := client.NewClient()
	if err != nil {
		log.Fatalf("Failed to create nitric client: %v", err)
	}

	nitric.Something.Delete("test.txt")

	// setup a basic http server
	router.HandleFunc("GET /", func(w http.ResponseWriter, r *http.Request) {
		// TODO: handled get request
	})

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	server := &http.Server{
		Addr:    ":" + port,
		Handler: middleware.Logging(router),
	}

	fmt.Println("Server started on port ", port)

	server.ListenAndServe()
}
