echo off

docker network create -d bridge my-bridge-network

docker run --name mongodb-aliases -p 27017:27017 -d mongodb-aliases:latest

docker network connect my-bridge-network mongodb-aliases

rem -30-
