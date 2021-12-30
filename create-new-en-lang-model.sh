
#!/bin/bash

# This will create a new language model based on the BroadBandModel English base.
# The return of this program is a custoization ID of newly created model
# usage:  >bash filename.sh name description

name=$1
desc=$2
key=$3

curl -X POST -u "apikey:$key" --header "Content-Type: application/json" --data "{\"name\": \"$name\", \"base_model_name\": \"en-US_BroadbandModel\", \"description\": \"$desc\"}" "https://api.us-south.speech-to-text.watson.cloud.ibm.com/instances/61b4ec92-bb32-4c6e-878b-ac7030a7f439/v1/customizations"
