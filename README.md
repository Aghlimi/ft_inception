# inception

A **42 School** project focused on learning **Docker**, **Docker Compose**, and the fundamentals of **containerization** by building and running a multi-container environment.

## Goals

- Understand how containers work and why they’re useful
- Write Dockerfiles to build custom images
- Use Docker Compose to orchestrate multiple services
- Practice managing configuration through environment variables

## Prerequisites

- Docker
- Docker Compose
- `make`

## Getting started

1. Create your local environment file from the example:

   ```sh
   mv .env.example .env
   ```

2. Edit `.env` and set values to match your setup (username, passwords, domains/hosts, etc.).

3. Build and run the project:

   ```sh
   make
   ```

## Notes

- Configuration is driven through the `.env` file.
- Services are orchestrated using Docker Compose (started via the Makefile).

## Author

- **Aghlimi** (solo project)
