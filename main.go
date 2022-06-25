package main

import (
	"github.com/go-programming-tour-book/blog-service/internal/routers"
	"net/http"
	"time"
)

//main 验证gin是否可以执行
func main() {
	router := routers.NewRouter()

	s := &http.Server{
		Addr:           ":8080",
		Handler:        router,
		ReadTimeout:    10 * time.Second,
		WriteTimeout:   10 * time.Second,
		MaxHeaderBytes: 1 << 20,
	}
	err := s.ListenAndServe()
	if err != nil {
		return 
	}
}
