
#!/bin/bash
# This program list all the acustic  model made ithin (61b4ec...) instance

key=$1

curl -X GET -u "apikey:$key" "https://api.us-south.speech-to-text.watson.cloud.ibm.com/instances/61b4ec92-bb32-4c6e-878b-ac7030a7f439/v1/customizations?language=en-US"
