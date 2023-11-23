package main

import (
	"net/http"

	"github.com/KaiTakabe0301/Todo/todo"
	"github.com/labstack/echo/v4"
)

// handler
type Server struct{}

// HelloWorld is a sample data structure to make sure each endpoint return something.
type HelloWorld struct {
	Message string `json:"message"`
}

func (h Server) GetTodos(ctx echo.Context) error {
	return ctx.JSON(http.StatusOK, HelloWorld{
		Message: "Get Todos",
	})
}

func (h Server) PostTodos(ctx echo.Context) error {
	return ctx.JSON(http.StatusOK, HelloWorld{
		Message: "Post Todos",
	})
}

func (h Server) DeleteTodosId(ctx echo.Context, id int64) error {
	return ctx.JSON(http.StatusOK, HelloWorld{
		Message: "Delete Todos",
	})
}

func (h Server) PatchTodosId(ctx echo.Context, id int64) error {
	return ctx.JSON(http.StatusOK, HelloWorld{
		Message: "Patch Todos",
	})
}

func main() {
	e := echo.New()
	s := Server{}

	todo.RegisterHandlers(e, s)

	initialMessage(e)

	// Start server
	e.Logger.Fatal(e.Start(":8080"))
}

func initialMessage(e *echo.Echo) {
	e.Logger.Info(`
  ______     __   __     ______     __  __
 /\  ___\   /\ "-.\ \   /\  __ \   /\ \_\ \
 \ \ \____  \ \ \-.  \  \ \  __ \  \ \  __ \
  \ \_____\  \ \_\\"\_\  \ \_\ \_\  \ \_\ \_\
   \/_____/   \/_/ \/_/   \/_/\/_/   \/_/\/_/
Echo server is running on http://localhost:8080
`)

}
