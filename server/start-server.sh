#!/bin/bash

# Start BungeeCord
(cd /workspaces/my-server/bungee && sudo java -jar bungee.jar &)

# Start Eaglercraft server
(cd /workspaces/my-server/server && sudo java -jar server.jar)

