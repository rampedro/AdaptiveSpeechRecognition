
# This bash file is meant to be use for teting the created language models with added feature : Acustic recognition
#ddacus="8660044b-304a-4049-af48-e7cb409226b8"
#acus="4e070fa6-ef15-4e4b-a709-4efd483d47b6"
#lang="937efe5a-7e55-4d9c-9097-f03a4c4cb524"

acus=$1
lang=$2
token=$3

curl -X POST --header  "Authorization: Bearer $token" "https://api.us-south.speech-to-text.watson.cloud.ibm.com/instances/61b4ec92-bb32-4c6e-878b-ac7030a7f439/v1/acoustic_customizations/$acus/train?custom_language_model_id=$lang&force=true"
