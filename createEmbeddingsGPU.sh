#!/bin/bash
cd faceEmbedder
docker build -t gpu_embedding -f Dockerfile.gpu .
cd ..
docker run --rm -v ${PWD}/putHereYourInputImages:/inputdata -v ${PWD}/getHereYourResults:/output --gpus all  nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04 gpu_embedding:latest