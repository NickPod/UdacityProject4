[![<NickPod>](https://circleci.com/gh/NickPod/UdacityProject4.svg?style=svg)](<https://circleci.com/gh/NickPod/UdacityProject4>)

## Project Overview

This project was to take a given application (a pre-trained `sklearn` model that has been trained to predict housing prices in Boston) and operationalize the api by building a docker container for it, ensuring it function, and running the container inside of a kubernetes cluster

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

---

### Key Files
* app.py - The Flask API
* model_data/boston_housing_prediction.joblib: The trained sklearn module for predictions
* requirements.txt - The requirements file detailed needed pip packages
* Dockerfile - The file used by docker to configure the container build
* Makefile - Contains sets of commands used to setup the environment, install requirements and lint the project. Used with the `make` command
* .circleci/config.yml - Configuration file for CircleCI integration
* run_docker.sh - Script used to build the Docker container
* upload_docker.sh - Script used to upload the built container to DockerHub
* run_kubernetes.sh - Script used to start the container running in kubernetes
* make_prediction.sh - Script used to test the API by requesting a prediction
