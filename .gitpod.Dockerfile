# Use an official openjdk runtime as a parent image
FROM openjdk:8-jre

# Set the working directory to /server
WORKDIR /server

# Install git
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy the contents of your EaglerCraft server repository into the container
COPY . /server

# Expose port 8081
EXPOSE 8081

# Start the EaglerCraft server
CMD ["java", "-jar", "spigot.jar"]
