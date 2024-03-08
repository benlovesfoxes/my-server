#!/bin/bash

# Function to start the server
function start_server() {
    /workspaces/my-server/restart_script.sh start
}

# Function to stop the server
function stop_server() {
    /workspaces/my-server/restart_script.sh stop
}

while true
do
    # Start the server
    start_server

    # Wait for 2 minutes before stopping the server
    sleep 120

    # Stop the server
    stop_server
done
