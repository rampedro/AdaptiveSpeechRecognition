#!/bin/bash


# This program is meant to be use in order to start training the specified lang model  IBM Speech2text
# you may change the language model by changing 'c4848972-0d29-4dd2-a310-6feabe435a3c' or the whole serve endpoint by changing the apikey.
 
# Usage > bash filename.sh

model=$1
key=$2
curl -X POST -u "apikey:$key" "https://api.us-south.speech-to-text.watson.cloud.ibm.com/instances/61b4ec92-bb32-4c6e-878b-ac7030a7f439/v1/customizations/$model/train?customization_weight=0.7&strict=false"
