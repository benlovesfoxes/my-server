# Use an official openjdk runtime as a parent image
FROM openjdk:8-jre

# Set the working directory to /server
WORKDIR /server

# Download Spigot 1.8
RUN mkdir /server/plugins
ADD https://cdn.getbukkit.org/spigot/spigot-1.8-R0.1-SNAPSHOT-latest.jar /server/spigot.jar

# Install required dependencies
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Clone your EaglerCraft server repository
RUN git clone <https://github.com/benlovesfoxes/my-server/tree/main> /server/plugins

# Expose port 8081
EXPOSE 8081

# Start the EaglerCraft server
CMD ["java", "-jar", "/server/spigot.jar"]
