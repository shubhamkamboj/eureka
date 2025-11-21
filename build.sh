#!/bin/bash

echo "Building Eureka Server..."

# Clean and build
mvn clean package -DskipTests

if [ $? -eq 0 ]; then
    echo "Build successful!"
    echo "JAR file: target/eureka-server-1.0.0.jar"
else
    echo "Build failed!"
    exit 1
fi