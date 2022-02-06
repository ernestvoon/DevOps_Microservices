# DevOps_Microservices
[![CircleCI](https://circleci.com/gh/ernestvoon/DevOps_Microservices.svg?style=svg&circle-token=7c3d933012760263fe689899153308c6c9ec2d6b)](https://app.circleci.com/pipelines/github/ernestvoon/DevOps_Microservices)
## Summary
This project is a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The original data which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). The files included allows for the anyone to quickly start on the project by executing the scripts run_docker.sh and run_kubernetes.sh.
## How To Use
The application can be ran standalone, on Docker or on Kubernetes.
### Running the enviroment standalone
```
make setup
make install
python app.py
```
### Running the enviroment with either Docker or Kubernetes
```
./run_docker.sh
./run_kubernetes.sh
```
### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl deployment

## Files
1. `run_docker.sh`:  This script file builds and run the containerised Docker image of the prediction application. Finally, the script file will expose the port 80 on the container to the host port 80. 
2. `run_kubernetes.sh`:  This script file creates a Kubenetes cluster using the Kubenetes Deployment feature and finally exposes the port 80 via the Kubernetes service.
3. `upload_docker.sh`:  This script file uploads the containerised image locally to Docker Hub.
4. `Dockerfile`: This is the container build instructions for Docker to execute.
5. `app.py`: This is the Flask application that will predict the house pricing.