# Use debian:bookworm as the base image
FROM debian:bookworm AS build

# Set the working directory
WORKDIR /app

# Install necessary dependencies for Go
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates \
    git golang \
    && rm -rf /var/lib/apt/lists/*

# Clone your Go backend repository
RUN git clone https://github.com/phluxx/ewnix-web-new.git backend

# Navigate into the backend directory
WORKDIR /app/backend

# Initialize Go modules and install dependencies
RUN go get github.com/gorilla/mux

# Build the Go application
RUN go build -o main

# Switch to the Vue.js frontend
WORKDIR /app

# Copy your Vue.js frontend files into the container
COPY . /app/ewnix

# Navigate to the Vue.js frontend directory
WORKDIR /app/ewnix

# Install Node.js and npm
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Install Vue.js project dependencies
RUN npm install

# Build the Vue.js application
RUN npm run build

# Create a new image based on debian:bookworm
FROM debian:bookworm

# Copy the built Go and Vue.js artifacts from the 'build' stage
COPY --from=build /app/backend/main /app/backend/
COPY --from=build /app/ewnix/dist /app/ewnix/

# Set the working directory
WORKDIR /app/backend

# Expose the desired port
EXPOSE 8080

# Run the Go backend when the container starts
CMD ["./main"]

