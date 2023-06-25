# Use the official Golang base image
FROM golang:1.16-alpine

# Set the working directory
WORKDIR /app

# Copy the Go modules files
COPY go.mod go.sum ./

# Download the dependencies
RUN go mod download

# Copy the rest of the application source code
COPY . .

# Build the application
RUN go build -o app

# Set the entry point command
CMD ["./app"]
