# AdaptiveSpeechRecognition
This repository contains the instruction to continuously train IBM speech Recognition model. 

# IBM speech recognition

IBM offers different API for creating language models, acoustic models, adding resources to each one of them, training, and testing.

# Default recognition request:

You may call the IBM S2T API with providing only the Base-language. (i.e en_broadband_english).
Also, the default mode has no acoustic (audio) model.

## Create a custom language model (English language):

Creating a custom language model gives us the option to add texts to train the model even further. More specifically, you can create a new language model by specifying what base language (English, Arabic, etc) you want. Each language model can have one language only.
This takes a couple of parameters. (Your desired name for the model, description of the model, base language of the model). Once you create a new custom lang model, the API will return its ID number.

>> bash create-new-en-lang-model.sh name description apikey


## create a custom language model (any language):

This is same as above, but here you also have the option to specify the language of your lanauge model. 
list of models : https://cloud.ibm.com/docs/speech-to-text?topic=speech-to-text-models

>> bash create-new-lang-model.sh name description model apikey


## Add text to a custom language model:

To train a custom language model, text data needs to be added to a custom model. Later you can run the training script to make the IBM service train that language model. To add the text to a language model you may use:

>> bash add-corpus-lang-model.sh textFile.txt languageModelId name apikey


## List all custom Language models:

To see the list of all the created language model you may use:
>> bash list_all_lang_model.sh apikey


## Train a custom Language model:

When you added the text file to your language model, you may run the following to start language model training:
>> bash train-language-model.sh languageModelId apikey


## Check custom Language model progress:

You may run the following code to check the status of the specified custom language model: 
Language model status options:
"Pending": The model is not still ready for the training
"ready": The model is ready to be trained
"Training": The model is being trained
"Available": The model is ready to be used

>> bash check-lang-model-status.sh languageModelId apikey


## Removing a custom language model:

If you need to remove a language model use delete-lang-model.sh. You may use it like this
>> bash delete-lang-model.sh languageModelId apikey


## Creating a custom acoustic(audio) model:

By creating a custom acoustic model we can add audio data to train the model more and more. We may create a new acoustic model by specifying the Speech recognition APIK key, and a name for your newly created acoustic model. 

>> bash create-custom-acustic-model.sh name apikey

## Add audio to custom acoustic model:

To train a custom acoustic model, audio data needs to be added to a custom acoustic model. Later you can run the training script to make the IBM service train that acoustic model. To add the audio to an acoustic model you may use:

>> bash add-audio-to-acusticmodel.sh acousticModelId audioFile.zip apiToken**




## List custom acoustic models:

To check the list of all available acoustic models you may use:
>> bash list-all-acust-models.sh apikey

## Training a custom acoustic model:

### Semi-supervised (Training an acoustic model along with a language model)

If you have the corresponding text of your audio files, you may create a custom language model solely to train an acoustic model. Once you created the temporary custom language model, add the corresponding text of your audio into a text file and append it to the newly created custom language model. Finally use the following command:

>> bash train-with-both.sh acousticModelId languageModelId apiToken**



### Unsupervised (Training an acoustic model alone)

It is also possible to train the acoustic model without having its corresponding texts. To do that, you may use the following command:

>> bash train-with-both.sh acousticModelId apiToken**




## Authentication:
To train your model using both the acoustic and language model, you also need to generate your token using getKey.py
This token may expire every couple of minutes. 

** apikey is different than the apiToken. You may find the apiToken by running geyKey.py. On the other hand, apikey can be found in your IBM speech recognition service dashboard.
