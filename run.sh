#!/bin/bash

echo "Starting Eureka Server..."

# Check if JAR exists
if [ ! -f "target/eureka-server-1.0.0.jar" ]; then
    echo "JAR file not found. Building..."
    ./build.sh
fi

# Run the server
java -jar target/eureka-server-1.0.0.jar

echo "Eureka Server started on http://localhost:8761"