# AdaptioveSpeechRecognition
This repository contains the instruction to continuously train IBM speech Recognition model. 

# IBM speech recognition

IBM offers different API for creating lanauge model , acoustic model, adding resource toneach one of them, traning and testing.

# Default recognition request:

You may call the IBM S2T API with providibg only the Base-language. (i.e en_broadband_english).
Also the default mode has no acoustic (audio) model.

## Create a custome language model:

Creating custom lang model give us the option to add texts to train the model even further. More specifically, you can create a new lanauge model by specifying what base-language (english, arabic and etc) you want. Each language model can have one language only.
This takes couple of parameters. (Your desired name for model, description of the model, base-language of the model). Once you create a new custom lang model, thebAPI will return its ID number.

>> bash create-new-en-lang-model.sh name description apikey


## Add text to a custom language model:

To train a custom lanauge model, text data needs to be added to a custom model. Later you can run the training script to make the IBM servie to train that lanauge model. In order to add the text to a lanauge model you may use:

>> bash add-corpus-lang-model.sh textFile.txt languageModelId name apikey


## List all custom Lanauge models:

To see the list of all the created lanauge model you may use:
>> bash list_all_lang_model.sh apikey


## Train a custom Lanauge model:

When you added the text file tp your lanauge mdoel, you may run the following to start lanauge model training:
>> bash train-language-model.sh languageModelId apikey


## Check custom Lanauge model progress:

You may run the following code to check the status of the specified custom lanauge model: 
Lanague model status options:
"Pending": The model is not still ready for the training
"ready": The model is ready to be trained
"Training": The model is being trained
"Available": The model is ready to be used

>> bash check-lang-model-status.sh languageModelId apikey


## Removing a custome lanauge model:

If you need to remove a lanauge model use delete-lang-model.sh. You may use it like this
>> bash delete-lang-model.sh languageModelId apikey


## Creating a custome acoustic(audio) model:

By creating a custom acoustic model we can add audio data to train the model more and more. We may create a new acoustic model by specifying your the Speech recognition APIK key, and a name for your nely created acoustic model. 

>> bash create-custom-acustic-model.sh name apikey

## Add audio to custom acoustic model:

To train a custom acoustic model, audio data needs to be added to a custom acoustic model. Later you can run the training script to make the IBM servie to train that acoustic model. In order to add the audio to a acoustic model you may use:

>> bash add-audio-to-acusticmodel.sh acousticModelId audioFile.zip apiToken*




## List custom acoustic models:

To check the list of all available acoustic models you may use:
>> bash list-all-acust-models.sh apikey

## Training a custom acoustic model:

### Semi-supervised (Training an acoustic model along with a lanauge model)

If you have the corresponding text of you audio files, you may create a custom lanauge model soley for the purpose of training an acoustic model. Once you created the temprory custom lanauge model, add the corresponding text of your audio into a text file and append it to the newly created custom lanauge model. Finally use the following command:

>> bash train-with-both.sh acousticModelId languageModelId apiToken*



### Unsupervised (Training an acoustic model alone)




# *
apikey is different than the apiToken. You may find the apiToken by running geyKey.py. On the other hand, apikey can be find in your ibm speech recogntiion service dashboard.


## Authentication:
In order to train your model using both the acoustic and lanauge model, you also need to generate your token using getKey.py
This token may expire couple of minutes. 
