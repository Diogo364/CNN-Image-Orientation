# Using CNN to Correct Image Orientation

## Description:
This project uses Convolutionary Neural Network to recognize image orientation using a data_set of people's pictures rotated randomly into the following categories:
- upright, 
- rotated_left, 
- upside_down,
- rotated_right
  
The training set and test set were already provided as well as an model suggestion as an starting point - CIFAR-10.

## How to use this code:
First you will need to install all dependencies that are on `requirements.txt` file.

Just run:
```
$pip install -r requirements.txt
```

Also donwload into the data_set folder as the following format:
```
|- data_set/
|--- test/
|------ test_set/
|---------- IMAGES...
|
|--- train/
|------ train.truth.csv
|------ train/
|---------- IMAGES...
```

After that you will be able to run the `CNN-image_orientation_recognition.ipynb`. This file contains all the code involving:
- Preprocessing data,
- Working with CNN, 
- Generate Numpy Output file to further work,
- Correct test orientation

**Important:** Before running the `CNN-image_orientation_recognition.ipynb` file make sure to unzip the data_set, as it contains all images used to work with the CNN

 ## Target folder: 
 Notice that every file generated by the `CNN-image_orientation_recognition.ipynb` is created within the `target` folder.

### Evaluating Results:
It was provided the `eval.py` script to evaluate our model's predicitons - saved within `./target/predicitons.csv`. 
This script compares our model's predictions with the csv containing the correct label for the test set.

To facilitate this task, I implemented a Makefile to run this script easily. By default it compares the `./target/predicitons.csv` with itself, but we can use an argument to compare with another file.

#### Comparing with itself
```
$make eval
```

#### Comparing with another CSV file:
```
$make eval COMPARE_WITH=${FULL_PATH_OF_CSV_FILE}
```

**Important:** As we do not have the csv file containing the correct label for the test set 


## Checkpoints:
As training an CNN may take quite a while and we do not want to have to train it every time we run it on new data, it is implemented an saving cell within `CNN-image_orientation_recognition.ipynb` that saves our whole model inside the `model_checkpoint` folder.


# Next Steps:
The next steps to improve the model and the whole structure would be:
- Compare the results with different input functions,
- Compare the results with an simpler model - less layers,
- Implement mini-batch to speed through the Epochs,
- Compare the results with different preprocessing method - maybe cropping images,
- Implement more checkpoints throughout the training process,
- Modularization of the code.