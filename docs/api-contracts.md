# API contracts — AI Part Lookup Assistant

The OpenAPI document is the authoritative contract: Swagger UI at `/docs`, raw document at `/openapi.json`. This table is the summary.

| Method | Path | Purpose | Response |
| --- | --- | --- | --- |
| `GET` | `/health` | Liveness probe used by the deploy pipeline | `{"status": "ok"}` |
| `GET` | `/api/assistants` | List assistants; `?status=` filters | `Assistant[]` |
| `POST` | `/api/assistants` | Create an assistant | `201` + `Assistant` |
| `GET` | `/api/assistants/{id}` | Fetch one assistant | `Assistant` or `404` |
| `PATCH` | `/api/assistants/{id}` | Partial update | `Assistant` or `404` |
| `DELETE` | `/api/assistants/{id}` | Remove an assistant | `204` or `404` |

## `Assistant`

| Field | Type | Notes |
| --- | --- | --- |
| `id` | integer | Server assigned |
| `title` | string | Required, 1–400 characters |
| `reference` | string | Optional, up to 200 characters |
| `status` | enum | `new`, `in-progress`, `complete` |
| `priority` | enum | `low`, `normal`, `high` |
