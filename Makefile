server:
	docker compose up --build -d
	GREENLIGHT_DB_DSN="postgresql://postgres:password@localhost:5432/greenlight" go run ./cmd/api

db-connect:
	pgcli postgresql://postgres:password@localhost:5432/greenlight