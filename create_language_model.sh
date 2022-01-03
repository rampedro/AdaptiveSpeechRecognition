
#!/bin/bash


name=$1
desc=$2
model=$3
key=$4

curl -X POST -u "apikey:$key" --header "Content-Type: application/json" --data "{\"name\": \"$name\", \"base_model_name\": \"$model\", \"description\": \"$desc\"}" "https://api.us-south.speech-to-text.watson.cloud.ibm.com/instances/61b4ec92-bb32-4c6e-878b-ac7030a7f439/v1/customizations"

