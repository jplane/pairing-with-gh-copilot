# Plan and Note Demo

**TL/DR**

[Brief video of structured pair programming with GitHub Copilot](https://1drv.ms/v/c/54ec5d133de5c768/EUdh89xkHppMv3SPShvOTFcB7zD7GbI9UCk5lHCMAq7ong)

## Summary

Many approaches to LLM-powered software development center around the vibe coding pattern:

_Generate a lot of code, as quickly as possible... then spend multiples of that time debugging and fixing it. Hopefully._

'Spray-and-pray' wasn't a particularly useful strategy for high-quality software development _before_ LLMs. 'Spray-and-pray-faster (with an LLM)' is not, either.

This repo explores an alternative approach that marries the power of LLMs with the discipline of structured software development. It employs GitHub Copilot as your pair programmer, so that you are in control of the pace and direction of the work.

The basic workflow: you prompt Copilot to organize work into detailed plans and track implementation progress through checklists. Additionally, Copilot maintains comprehensive notes for the outcome of each phase of work. This approach ensures Copilot has clear, written context and moves only as quickly as you, the knowledgeable "human in the loop", allow.

You also maintain the ability to pause (for lunch, for a meeting, to go home and play with your kids, etc.) as you like, without losing context. Further, you can backtrack to previous phases of work if you need to change direction or fix mistakes.

This approach is driven by the [copilot-instructions.md](./.github/copilot-instructions.md) file, which tells Copilot what to do if you ask it to "create a plan to build X". It also provides instructions to Copilot for how to track progress and capture implementation notes.

See additional documentation for copilot instructions [here](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot).

## Core Functionality

- **Structured Planning:** Plans are created in `docs/plans` with numbered phases and tasks, using checklists to track progress.
- **Implementation Tracking:** As tasks and phases are completed, plans are updated and checked off.
- **Comprehensive Notes:** For each plan, a corresponding notes file in `docs/notes` summarizes completed work, major changes, and design principles.
- **Tech Agnostic:** The scaffolding here will work with any programming language, framework, or desired architecture. Note you might need to update the [devcontainer setup](./.devcontainer/) to install dependencies appropriate to your chosen stack.

## Prerequisite Tools

- **Docker** (for running the dev container)
- **VS Code** (with [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) and recommended extensions for this repo)

## Example Prompts

#### Creating a Plan

```md
Create a plan to build a simple web application that allows users to create and manage to-do lists. The application should have the following features:

1. User authentication (sign up, login, logout)
2. Create, read, update, and delete to-do items
3. Mark to-do items as complete or incomplete
4. Filter to-do items by status (all, completed, incomplete)
5. Responsive design for mobile and desktop

Use the latest version of React and Node.js for the frontend and backend, respectively. The application should be structured in a modular way, with clear separation of concerns between components, services, and data models. Include a README file with instructions on how to set up and run the application locally.

Only create a plan. Don't implement any code yet.
```

```md
I want a Python REST API for capturing real-time stats of a soccer match. Support capture of goals, assists, successful or unsuccessful passes and dribbles, fouls given and received, yellow and red cards, and substitutions.

Use Flask and connexion for REST API support, and include Swagger UI. Add OpenTelemetry for observability. Use uvicorn for hosting, and SQLAlchemy and SQLite for database persistence. Be sure to get the latest versions of these libraries.

Just create a plan, don't write any code yet.
```

```md
Write a plan to implement a .NET Web API for tracking purchase orders. Use the minimal API style for .NET 9.

Use the business requirements outlined in `<path_to_requirements_doc>` to guide the design of the API, in alignment with desired functionality.

The API should support CRUD operations for purchase orders, and include authentication and authorization using JWT. Use Entity Framework Core for data access and SQL Server for the database. Include unit tests for the API endpoints.

Don't write the code yet, just create a plan.
```

#### Implementing a Plan

```md
Implement phase 1 of the plan.
```

```md
Perform tasks 1.1 and 1.2 of `docs/plans/do-the-thing.md`.
```

#### Reviewing Progress

```md
Summarize the code changes made yesterday.
```

```md
Summarize all the changes to date for the observability layer.
```
