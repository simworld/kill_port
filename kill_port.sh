#!/bin/bash

# Check if a port number is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <port_number>"
  exit 1
fi

PORT=$1

# Find the process using the port
PID=$(lsof -t -i:$PORT)

# Check if a process ID was found
if [ -z "$PID" ]; then
  echo "No process is using port $PORT."
  exit 0
fi

# Kill the process
kill -9 $PID

# Confirm the process has been terminated
if [ $? -eq 0 ]; then
  echo "Successfully killed process $PID on port $PORT."
else
  echo "Failed to kill the process on port $PORT."
fi

