#!/bin/bash


model=$1
key=$2

curl -X GET -u "apikey:$key" "https://api.us-south.speech-to-text.watson.cloud.ibm.com/instances/61b4ec92-bb32-4c6e-878b-ac7030a7f439/v1/acoustic_customizations/$model"
