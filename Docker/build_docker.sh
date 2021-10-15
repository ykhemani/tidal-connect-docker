#!/bin/bash

echo "Building Docker image: tidal-connect"
cd .. &&  docker build -f Docker/Dockerfile -t tidal-connect .
echo "Done..."
