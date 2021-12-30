


## This program will create a new acustic model

name=$1
key=$2
curl -X POST -u "apikey:$key" --header "Content-Type: application/json" --data "{\"name\": \"$name\", \"base_model_name\": \"en-US_BroadbandModel\", \"description\": \"$name\"}" "https://api.us-south.speech-to-text.watson.cloud.ibm.com/instances/61b4ec92-bb32-4c6e-878b-ac7030a7f439/v1/acoustic_customizations"
