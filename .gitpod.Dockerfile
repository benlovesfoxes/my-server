# Use an official openjdk runtime as a parent image
FROM openjdk:8-jre

# Set the working directory to /server
WORKDIR /server

# Copy the contents of your EaglerCraft server repository into the container
COPY . /server

# Expose port 8081
EXPOSE 8081

# Start the EaglerCraft server
CMD ["java", "-jar", "spigot.jar"]
