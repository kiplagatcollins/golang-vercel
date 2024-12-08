# Makefile for development environment

# Default target
.DEFAULT_GOAL := run

# Run the application in development mode
run:
	APP_ENV=dev go run internal/main.go

# Clean build artifacts
clean:
	go clean
	rm -rf build/

# Build the application for Windows (amd64 architecture)
build:
	GOOS=windows GOARCH=amd64 go build -ldflags="-s -w" -o build/main.exe internal/main.go

# Run tests
test:
	go test ./...

# Format code
fmt:
	go fmt ./...

.PHONY: run clean build test fmt
