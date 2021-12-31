
acus=$1
token=$2

curl -X POST --header  "Authorization: Bearer $token" "https://api.us-south.speech-to-text.watson.cloud.ibm.com/instances/61b4ec92-bb32-4c6e-878b-ac7030a7f439/v1/acoustic_customizations/$acus/train"
