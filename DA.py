# add library, grab the file and make extra files and creae zip,

import librosa
from audiomentations import Compose, AddGaussianNoise, TimeStretch, PitchShift, Shift
import numpy as np
from scipy.io import wavfile
import matplotlib.pyplot as plt
import wave
import contextlib
import audioread
import librosa.display
from os import listdir
from os.path import isfile, join


SAMPLE_RATE = 16000
mypath = input("Enter the address of you audio folder:")


onlyfiles = [f for f in listdir(mypath) if "wav" in f]
#print(onlyfiles)
print("1249120_44246595_60938320.wav" in onlyfiles)
# find the sum of minues of the audio
m = 0
for item in onlyfiles:
    try:#print(item)
        file = mypath+"/"+item
        #s += check_len(mypath+"/"+item)
        y, s = librosa.load(file, sr=16000)
        m += len(y)/s
    except Exception:
        print(f" Issue oppening {item}")




# augment more audio top reach min 15 minus of audio




augment = Compose([
    AddGaussianNoise(min_amplitude=0.001, max_amplitude=0.016, p=0.5)
    #TimeStretch(min_rate=0.8, max_rate=1.25, p=0.5),
    #PitchShift(min_semitones=-4, max_semitones=4, p=-0.5),
    #Shift(min_fraction=-0.5, max_fraction=0.5, p=0.5)
])


i=0
k=0
import random
index = 0

while (900-m-k) > 0:
    index = random.randint(0,len(onlyfiles)-1)
    item = onlyfiles[index]
    file = mypath+"/"+item
    y, s = librosa.load(file, sr=16000)
    samples = y
    SAMPLE_RATE = s
    k += len(y)/s
    # Augment/transform/perturb the audio data
    augmented_samples = augment(samples=samples, sample_rate=SAMPLE_RATE)
    output_file_path = "generated/girltalkS" + str(i) + ".wav"
    wavfile.write(output_file_path, rate=SAMPLE_RATE, data=augmented_samples)
    i += 1













#augment = Compose([
    #AddGaussianNoise(min_amplitude=0.001, max_amplitude=0.016, p=0.5)
    #,
    #TimeStretch(min_rate=0.8, max_rate=1.25, p=0.5),
    #PitchShift(min_semitones=-4, max_semitones=4, p=0.5),
    #,Shift(min_fraction=-0.5, max_fraction=0.5, p=0.5)
#])

# Generate 2 seconds of dummy audio for the sake of example
#samples = np.random.uniform(low=-0.2, high=0.2, size=(32000,)).astype(np.float32)
#print(samplesorg)

#y, s = librosa.load(file,mono=True, sr=16000)
#samples = y
#SAMPLE_RATE = s
#leng = (check_len(file))

#fig, ax = plt.subplots(nrows=3, sharex=True, sharey=True)
#librosa.display.waveplot(y,sr=s, x_axis='time');
#ax[0].set(title='Monophonic')
#ax[0].label_outer()




#for i in range(0,1):
#for i in range(0,int(1200/leng)):
    # Augment/transform/perturb the audio data
    #augmented_samples = augment(samples=samples, sample_rate=SAMPLE_RATE)
    #output_file_path = "testingAUG/same" + str(i) + ".wav"
    #wavfile.write(output_file_path, rate=SAMPLE_RATE, data=augmented_samples)
