#!/bin/bash

# This program is meant to be use in order remove a selected lang model IBM Speech2text
# Usage > bash filename.sh


customization_id=$1
key=$2


curl -X DELETE -u "apikey:$key" "https://api.us-south.speech-to-text.watson.cloud.ibm.com/instances/61b4ec92-bb32-4c6e-878b-ac7030a7f439/v1/customizations/$customization_id"
