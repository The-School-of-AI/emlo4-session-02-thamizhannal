[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/A2tcAnZG)
[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=15901677&assignment_repo_type=AssignmentRepo)
# emlov3-session-02

# PyTorch Docker Assignment

Welcome to the PyTorch Docker Assignment. This assignment is designed to help you understand and work with Docker and PyTorch.

## Assignment Overview

In this assignment, you will:

1. Create a Dockerfile for a PyTorch (CPU version) environment.
2. Keep the size of your Docker image under 1GB (uncompressed).
3. Train any model on the MNIST dataset inside the Docker container.
4. Save the trained model checkpoint to the host operating system.
5. Add an option to resume model training from a checkpoint.

## Starter Code

The provided starter code in train.py provides a basic structure for loading data, defining a model, and running training and testing loops. You will need to complete the code at locations marked by TODO: comments.

## Submission

When you have completed the assignment, push your code to your Github repository. The Github Actions workflow will automatically build your Docker image, run your training script, and check if the assignment requirements have been met. Check the Github Actions tab for the results of these checks. Make sure that all checks are passing before you submit the assignment.

# Solution README

### Pull the repo from git hub
```
$git clone https://github.com/The-School-of-AI/emlo4-session-02-thamizhannal.git
```

### Build the docker container
```
$docker build --tag emlo4-session-02-thamizhannal . 
```

### List the created container
```
$docker container ls
CONTAINER ID   IMAGE                             COMMAND                  CREATED             STATUS             PORTS                  NAMES
1d559729bf3d   emlo4-session-02-thamizhannal     "bash"                   About an hour ago   Up About an hour                          gallant_wozniak
aa7bd9239360   docker/welcome-to-docker:latest   "/docker-entrypoint.…"   3 days ago          Up 3 days          0.0.0.0:8088->80/tcp   welcome-to-docker
user@ emlo4-session-02-thamizhannal %
```

### Run the docker container
```
$docker run -it emlo4-session-02-thamizhannal 
```
### Run grading.sh script
```
(base) user@ emlo4-session-02-thamizhannal $sh tests/grading.sh
```
