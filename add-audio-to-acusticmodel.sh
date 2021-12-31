
# This bash file is meant to be use for teting the created language models with added feature : Acustic recognition

acus=$1

file=$2
token=$3


curl -X POST --header "Authorization: Bearer $token" --header "Content-Type: application/zip" --header "Contained-Content-Type: audio/l16;rate=16000" --data-binary @$file "https://api.us-south.speech-to-text.watson.cloud.ibm.com/instances/61b4ec92-bb32-4c6e-878b-ac7030a7f439/v1/acoustic_customizations/$acus/audio/audio2"

#lang="asdasd"
#curl -X POST --header "Authorization: Bearer {token}" "{url}/v1/acoustic_customizations/{customization_id}/train?custom_language_model_id={customization_id}"
