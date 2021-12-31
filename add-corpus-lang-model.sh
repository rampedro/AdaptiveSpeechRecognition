



# This program is meant to be use in order to add a new corpus to a language model IBM Speech2text
# Usage > bash filename.sh @yourfile.txt langModel name

#@medicalConvo1.txt
#c4848972-0d29-4dd2-a310-6feabe435a3c

corpusFile=$1
langModel=$2
name=$3
key=$4




curl -X POST -u "apikey:$key" --data-binary @$corpusFile "https://api.us-south.speech-to-text.watson.cloud.ibm.com/instances/61b4ec92-bb32-4c6e-878b-ac7030a7f439/v1/customizations/$langModel/corpora/$name"
