#!/bin/bash

envFile=$1

echo "input variables."

mkdir env

read -p "collectionName: " collectionName
read -p "collectionId: " collectionId
read -p "apiKey: " apiKey
read -p "output (output filename): " output

sleep 1
echo "collectionName=${collectionName}" >> ${envFile}
echo "apiKey=${apiKey}" >> ${envFile}
echo "collectionId=${collectionId}" >> ${envFile}
echo "output=${output}" >> ${envFile}