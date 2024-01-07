# Recipify: TanStack Router Demo

This is my sample application for the [TanStack Router](https://tanstack.com/router/v1) for React.

![Screenshot of example application](screenshot.png)

## Running the backend

The backend that provides the API is implemented with Spring Boot and Java.

In order to run it, you either have to use Java or use the prebuild Docker Image.

The easiest is to use the `docker-compose-backend.yaml` file, that also starts the required Postgres database:

```
docker-compose -f docker-compose-backend.yaml up -d
```

If you're a Java ("fullstack") developer, you can launch the backend from your IDE by running the Spring Boot class `nh.recipify.TestBackendApplication`. This also automatically starts the postgres database using docker-compose. (Note that you need JDK21 and docker-compose installed)

In either way, the backend runs on http://localhost:8080.

## Running the frontend

The frontend is a Single-Page-Application built with Vite. You can run it with pnpm:

```
cd frontend
pnpm install
pnpm dev
```

The frontend runs on http://localhost:8090

## A note on the content

The content is almost entirely generated with JetBrains AI, ChatGPT and DALL-E. You should not treat the recipes for real (unless you blindly trust AI) :-)

## Questions, comments, feedback

If you have questions or commments, please feel free to open an issue here in this directory.

You can also reach and follow me on [several platforms](https://nilshartmann.net/follow-me).
