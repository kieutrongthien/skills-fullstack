# Go snippets (Gin/Echo)

## Gin: router and middleware
```go
r := gin.New()
r.Use(gin.Recovery())
r.Use(requestid.New()) // or custom middleware
r.Use(loggerMiddleware)

api := r.Group("/api/v1")
api.GET("/health", healthHandler)
api.POST("/users", createUserHandler)

if err := r.Run(); err != nil { log.Fatal(err) }
```

## Gin: handler pattern
```go
type CreateUserRequest struct {
  Email string `json:"email" binding:"required,email"`
  Name  string `json:"name" binding:"required"`
}

type UserService interface {
  Create(ctx context.Context, req CreateUserRequest) (User, error)
}

func createUserHandler(svc UserService) gin.HandlerFunc {
  return func(c *gin.Context) {
    var req CreateUserRequest
    if err := c.ShouldBindJSON(&req); err != nil {
      respondError(c, http.StatusBadRequest, "invalid_request", err)
      return
    }
    user, err := svc.Create(c.Request.Context(), req)
    if err != nil {
      respondDomainError(c, err)
      return
    }
    c.JSON(http.StatusCreated, user)
  }
}
```

## Echo: router and middleware
```go
e := echo.New()
e.Use(middleware.Recover())
e.Use(middleware.RequestID())
e.Use(middleware.Logger())

e.GET("/api/v1/health", healthHandler)
e.POST("/api/v1/users", createUserHandler)

if err := e.Start(":8080"); err != nil {
  e.Logger.Fatal(err)
}
```

## Echo: handler pattern
```go
type CreateUserRequest struct {
  Email string `json:"email" validate:"required,email"`
  Name  string `json:"name" validate:"required"`
}

func createUserHandler(svc UserService) echo.HandlerFunc {
  return func(c echo.Context) error {
    var req CreateUserRequest
    if err := c.Bind(&req); err != nil {
      return respondError(c, http.StatusBadRequest, "invalid_request", err)
    }
    if err := c.Validate(&req); err != nil {
      return respondError(c, http.StatusBadRequest, "validation_error", err)
    }
    user, err := svc.Create(c.Request().Context(), req)
    if err != nil {
      return respondDomainError(c, err)
    }
    return c.JSON(http.StatusCreated, user)
  }
}
```

## Error response helper (sketch)
- Shape errors consistently: `{ "code": "invalid_request", "message": "...", "requestId": "..." }`.
- Include correlation/request ID; avoid leaking internal error details.
