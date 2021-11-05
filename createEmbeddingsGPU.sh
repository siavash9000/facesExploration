#!/bin/bash
cd faceEmbedder
docker build -t gpu_embedding -f Dockerfile.gpu .
cd ..
docker run --gpus all -v ${PWD}/putHereYourInputImages:/inputdata -v ${PWD}/getHereYourResults:/output gpu_embedding