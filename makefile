#Variables
GO = go
PROJECT_DIR = $(shell pwd)
GQLGEN = github.com/99designs/gqlgen
DB_URL = mongodb://root:pass@localhost:27017
DB_NAME = cv_manager

#Environment 
PORT = 9090

build:
	@echo "==> (1/2) Building server..."
	@$(GO) build -o $(PROJECT_DIR)/bin/server $(PROJECT_DIR)/server.go
	@echo "==> (2/2) Server built into: $(PROJECT_DIR)/bin/server"

run: build
	@echo "==> (1/1) Running server..."
	@DB_NAME=$(DB_NAME) DB_URL=$(DB_URL) PORT=$(PORT) $(PROJECT_DIR)/bin/server

clean:
	@echo "==> (1/2) Cleaning up..."
	@rm -rf $(PROJECT_DIR)/bin/server
	@echo "==> (2/2) Server cleaned up"

generate:
	@echo "==> (1/2) Generating GraphQL code..."
	@$(GO) run $(GQLGEN) generate
	@echo "==> (2/2) GraphQL code generated"

.DEFAULT_GOAL := run

.PHONY: build run clean generate