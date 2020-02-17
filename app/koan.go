package main

import "github.com/gin-gonic/gin"
import "net/http"

func main() {
	router := gin.Default()

	router.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "pong",
		})
	})

	router.LoadHTMLGlob("templates/*")
    router.GET("/index", func(c *gin.Context) {
      c.HTML(http.StatusOK, "index.tmpl", gin.H{
        "title": "Koan's Hello World",
      })
    })

	router.Run(":8080")
}
