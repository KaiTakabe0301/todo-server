# Use an official Go runtime as a parent image
FROM golang:1.21

# Set the working directory inside the container
WORKDIR /app

COPY docker_entrypoint.sh .

# Install oapi-codegen
RUN go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen@latest

ENTRYPOINT ["/app/docker_entrypoint.sh"]