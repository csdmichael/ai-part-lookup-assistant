## Build Stage Proposal: AI Part Lookup Assistant

### 1. Overview

This proposal outlines the traceable source changes, unit tests, and code-review guidance for the initial build stage of the **AI Part Lookup Assistant**. The build will focus on delivering a minimal, reviewable implementation of the unified part lookup experience, backend data aggregation, and AI summarization, as described in the approved requirements and work breakdown.

---

### 2. Traceable Source Changes

#### 2.1 Frontend

**Files to be created/modified:**
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

#### 2.2 Backend

**Files to be created/modified:**
- `api/partLookupController.ts`  
  - REST endpoint: `/api/lookup?partNumber=...`
- `api/connectors/inventoryConnector.ts`  
  - Mocked API connector for inventory system.
- `api/connectors/supplierConnector.ts`  
  - Mocked API connector for supplier system.
- `api/connectors/poConnector.ts`  
  - Mocked API connector for purchase orders.
- `api/connectors/deliveryConnector.ts`  
  - Mocked API connector for delivery dates.
- `api/services/aiSummaryService.ts`  
  - Calls Microsoft Agent Framework for AI summarization.
- `api/utils/dataNormalizer.ts`  
  - Normalizes and merges data from connectors.

#### 2.3 Configuration & Integration

**Files to be created/modified:**
- `config/apiManagement.json`  
  - Azure API Management endpoints (mocked for Dev).
- `config/agentFramework.json`  
  - Microsoft Agent Framework integration settings.

---

### 3. Unit Tests

#### 3.1 Frontend

- `src/components/__tests__/SearchBox.test.tsx`
  - Renders input, handles submit, validates part number.
- `src/components/__tests__/ResultsDisplay.test.tsx`
  - Displays mock results, handles error states.

#### 3.2 Backend

- `api/connectors/__tests__/inventoryConnector.test.ts`
  - Returns mock inventory data, handles errors.
- `api/connectors/__tests__/supplierConnector.test.ts`
  - Returns mock supplier data, handles errors.
- `api/connectors/__tests__/poConnector.test.ts`
  - Returns mock PO data, handles errors.
- `api/connectors/__tests__/deliveryConnector.test.ts`
  - Returns mock delivery data, handles errors.
- `api/services/__tests__/aiSummaryService.test.ts`
  - Summarizes mock data, handles missing fields.
- `api/partLookupController.test.ts`
  - End-to-end: given part number, returns merged data and summary.

---

### 4. Code Review Guidance

- **Traceability:** Ensure all source changes map to requirements, features, and user stories.
- **Mocking:** All API connectors are mocked for Dev; verify clear separation for production integration.
- **Error Handling:** Confirm partial results and clear error messages per US3.
- **Accessibility:** Validate search box and results for usability and accessibility.
- **AI Integration:** Review agent framework calls for input/output safety and compliance.
- **Security:** No secrets or sensitive data in source/config; all external calls use approved endpoints.
- **Testing:** All new code must have corresponding unit tests; tests should cover normal and error flows.
- **Documentation:** Inline comments and README updates for new modules/components.

---

### 5. Next Steps

- Review this proposal for completeness and traceability.
- Upon approval, proceed with implementation of the outlined source changes and tests.
- Submit code for review before merging or deployment.

---

**References:**
- [Requirements Document](https://github.com/csdmichael/ai-part-lookup-assistant/blob/main/docs/intake/requirements/ai-part-lookup-assistant-requirements.md)
- [Requirements Agent Output](https://github.com/csdmichael/ai-part-lookup-assistant)
- [Cost and Time Estimate](see above)

---

**Ready for review. Please confirm or request changes before build implementation.**