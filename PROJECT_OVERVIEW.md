# CleanArchitecture — Project Overview

## Summary
CleanArchitecture is a modular, testable, and maintainable codebase that demonstrates the Clean Architecture principles (separation of concerns, dependency inversion, and explicit boundaries). The repository provides a reference implementation and patterns for building scalable applications with clear domain boundaries.

## Goals
- Demonstrate a pragmatic application of Clean Architecture.
- Provide a reusable project structure for real-world applications.

## Key Principles
- Single Responsibility: each module has a focused purpose.
- Dependency Rule: inner layers (entities, use-cases) do not depend on outer layers (frameworks, UI).
- Interface-driven boundaries: outer layers implement interfaces defined by inner layers.
- Testability: layers are structured to allow fast unit tests and slower integration/E2E tests.

## High-level Architecture
- Entities / Domain: core business models and domain logic.
- Use Cases / Interactors: application-specific business rules that orchestrate domain entities.
- Interfaces / Gateways / Repositories: boundary interfaces used by use cases to interact with external systems (databases, APIs).
- Framework / Infrastructure: concrete implementations (ORM, HTTP clients, persistence).
- Presentation / API / CLI: UI or API layer that handles input/output, mapping to/from use-cases.


## Modules 
- domain/ — domain models, value objects, domain services

## Tech Stack 
- Language: Swift

## Getting Started (minimal)
1. Clone the repo:
   git clone https://github.com/Bhupesh92/CleanArchitecture.git
2. Open the project in your IDE and follow repository-specific README steps to build/run.

## Contribution
- Follow the repository coding standards and testing requirements.
- Create small, focused pull requests with descriptive titles and linked issues if applicable.
- Write unit tests for new business logic and integration tests for external interactions.
- Document any architectural decisions in docs/ or in ADRs.

## License
State the repository license (e.g. MIT, Apache-2.0). If missing, add a LICENSE file and set the license here.

