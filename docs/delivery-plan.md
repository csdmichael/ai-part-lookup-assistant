# Delivery plan — AI Part Lookup Assistant

Sprints are two weeks. Each sprint closes with a demo and an approval gate.

| Sprint | Focus | Exit criteria |
| --- | --- | --- |
| Sprint 1 | Foundation: repo, pipelines, schema | CI green, API deployed |
| Sprint 2 | Core scope | Approved user stories delivered |
| Sprint 3 | Hardening and release | Tests pass, release gate approved |

## Approved scope

- `src/components/SearchBox.tsx`
- Simple input for part number, submit handler.
- `src/components/ResultsDisplay.tsx`
- Displays inventory, supplier, PO, delivery, and AI summary.
- `src/pages/PartLookupPage.tsx`
- Main page combining search and results.
- `src/App.tsx`
- Routing and layout.
- `src/styles/lookup.css`
- Basic styling for accessibility and usability.
- `api/partLookupController.ts`
- REST endpoint: `/api/lookup?partNumber=...`
