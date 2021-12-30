# AdaptioveSpeechRecognition
This repository contains the instruction to continuously train IBM speech Recognition model. 

#IBM speech recognition

IBM offers different API for creating lanauge model , acoustic model, adding resource toneach one of them, traning and testing.

#Default recognition request:

You may call the IBM S2T API with providibg only the Base-language. (i.e en_broadband_english).
Also the default mode has no acoustic (audio) model.

##Create a custome language model:

Creating custom lang model give us the option to add texts to train the model even further. More specifically, you can create a new lanauge model by specifying what base-language (english, arabic and etc) you want. Each language model can have one language only.
This takes couple of parameters. (Your desired name for model, description of the model, base-language of the model). Once you create a new custom lang model, thebAPI will return its ID number.

>> bash create-new-en-lang-model.sh name description apikey



##Creating a custome acoustic(audio) model:

By creating a custom acoustic model we can add audio data to train the model more and more. We may create a new acoustic model by specifying your the Speech recognition APIK key, and a name for your nely created acoustic model. 

>> bash create-custom-acustic-model.sh name apikey



## Authentication:
In order to train your model using both the acoustic and lanauge model, you also need to generate your token using getKey.py
This token may expire couple of minutes. 
