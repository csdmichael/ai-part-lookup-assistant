# AI Part Lookup Assistant — API

FastAPI service. Owns validation, authorization, and all database access.

| Path | Purpose |
| --- | --- |
| `/health` | Liveness probe |
| `/docs` | Swagger UI |
| `/openapi.json` | OpenAPI document |
| `/api/assistants` | Assistants collection (GET, POST) |
| `/api/assistants/{id}` | Single assistant (GET, PATCH, DELETE) |
