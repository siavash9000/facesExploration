# What is this repo about?

This repo experiments with the [FaceNet implementation](https://github.com/davidsandberg/facenet) from David Sandberg. 
It includes a copy of the implementation and uses Docker for easy reproducibility.
FaceNet is a neural network written in TensorFlow. It computes for a given Image a so-called embedding. 
These embeddings are vectors of dimension 512 and encode the similarity of faces, meaning that faces which are similar 
has a smaller euclidean distance than less similar faces. This property can be used for face recognition.

If you want to see the results, check out this [notebook](https://github.com/codeshiprepeat/facesExploration/blob/main/celebAExploration.ipynb)

# Getting started

## Prerequisites

#### Install docker (skip if already installed)
https://docs.docker.com/engine/installation/

#### Install docker-compose (skip if already installed)
https://docs.docker.com/compose/install/

## Running the celebAExploration jupyter notebook

### Download the CelebA Dataset
You can download the [CelebA](https://mmlab.ie.cuhk.edu.hk/projects/CelebA.html) Dataset from the projects [gdrive](https://drive.google.com/drive/folders/0B7EVK8r0v71pWEZsZE9oNnFzTm8?resourcekey=0-5BR16BdXnb8hVj6CNHKzLg).
Download the files [img_align_celeba.zip](https://drive.google.com/file/d/0B7EVK8r0v71pZjFTYXZWM3FlRnM/view?usp=sharing&resourcekey=0-dYn9z10tMJOBAkviAcfdyQ) and [identity_CelebA.txt](https://drive.google.com/file/d/1_ee_0u7vcNLOfNLegJRHmolfH5ICW-XS/view?usp=sharing) and move them to the folder *input*. 
On a Linux system unzip *img_align_celeba.zip* unzip it with the following command in the top-level directory

`cd input && unzip img_align_celeba.zip`

### Download precomputed embeddings
Downlad precomputed embeddings for the images: [embeddings.zip](https://drive.google.com/drive/folders/1ioGGL61hov_OPAAoWMsv8yJzy9zxnrNr?usp=sharing). 
Computing the embeddings on your own can take several hours. 
Put this file into the folder output. On a Linux system unzip it with the following command in the top-level directory

`cd output && unzip embeddings.zip`

### Run the notebook

You can now run the notebook. Execute this command in the top-level directory:  

`docker-compose -f docker-compose-notebook.yml up`

You can open the notebook then by using the link you see in the console:

 `http://localhost:8888/?token=SOME_TOKEN`

Then click on the file

`celebAExploration.ipynb`

Jupyter Notebook generates a new token on every startup. So you must use the link from the console.
## Compute your own embeddings
You can also ompute embeddings for your own dataset.
Place your pictures in the folder *input*. Then run the command

`docker-compose build && docker-compose up`

*Caution*: this command expects the existence of subfolders e.g. *./input/mypictures/...*. 
Putting the pictures directly in the input folder will unfortunately result in a cryptic error.
