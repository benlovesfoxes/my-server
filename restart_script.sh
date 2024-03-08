#!/bin/bash

# Stop the server (if running)
sudo bash /workspaces/my-server/server/stop-server.sh

# Start the server
sudo java -jar /workspaces/my-server/server/server.jar
