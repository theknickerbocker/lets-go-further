export GREENLIGHT_DB_DSN=postgresql://postgres:password@localhost:5432/greenlight?sslmode=disable

server:
	docker compose up --build -d
	go run ./cmd/api/

db-connect:
	pgcli postgresql://postgres:password@localhost:5432/greenlight

db-migrate:
	migrate -path=./migrations -database=${GREENLIGHT_DB_DSN} up
