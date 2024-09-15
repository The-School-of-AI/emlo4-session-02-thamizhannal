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

**output:**

###gitpod /workspace/emlo4-session-02-thamizhannal (main) $ sh tests/grading.sh 
🚚 Building the Docker image...
[+] Building 1.7s (10/10) FINISHED                                                                                docker:default
 => [internal] load build definition from Dockerfile                                                                        0.0s
 => => transferring dockerfile: 270B                                                                                        0.0s
 => [internal] load .dockerignore                                                                                           0.0s
 => => transferring context: 2B                                                                                             0.0s
 => [internal] load metadata for docker.io/library/python:3.9-slim                                                          0.6s
 => [auth] library/python:pull token for registry-1.docker.io                                                               0.0s
 => [1/4] FROM docker.io/library/python:3.9-slim@sha256:2851c06da1fdc3c451784beef8aa31d1a313d8e3fc122e4a1891085a104b7cfb    0.0s
 => [internal] load build context                                                                                           0.0s
 => => transferring context: 6.60kB                                                                                         0.0s
 => CACHED [2/4] WORKDIR /workspace                                                                                         0.0s
 => CACHED [3/4] RUN pip install --no-cache-dir numpy==1.23.4 black torch==1.12.1+cpu torchvision==0.13.1+cpu --extra-inde  0.0s
 => [4/4] COPY train.py .                                                                                                   0.0s
 => exporting to image                                                                                                      1.1s
 => => exporting layers                                                                                                     1.1s
 => => writing image sha256:36652ac900ce41af0c5a71b620aec669739ff9f53f8c0495608994e0d5fc57a2                                0.0s
 => => naming to docker.io/library/student_image                                                                            0.0s
✅ Docker image size is acceptable. Size: 0 GB 955 MB
🏫 Running the training script...
100.0%
100.0%
100.0%
100.0%
chosen device is cpu
Downloading http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz
Failed to download (trying next):
HTTP Error 403: Forbidden

Downloading https://ossci-datasets.s3.amazonaws.com/mnist/train-images-idx3-ubyte.gz
Downloading https://ossci-datasets.s3.amazonaws.com/mnist/train-images-idx3-ubyte.gz to ../data/MNIST/raw/train-images-idx3-ubyte.gz
Extracting ../data/MNIST/raw/train-images-idx3-ubyte.gz to ../data/MNIST/raw

Downloading http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz
Failed to download (trying next):
HTTP Error 403: Forbidden

Downloading https://ossci-datasets.s3.amazonaws.com/mnist/train-labels-idx1-ubyte.gz
Downloading https://ossci-datasets.s3.amazonaws.com/mnist/train-labels-idx1-ubyte.gz to ../data/MNIST/raw/train-labels-idx1-ubyte.gz
Extracting ../data/MNIST/raw/train-labels-idx1-ubyte.gz to ../data/MNIST/raw

Downloading http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz
Failed to download (trying next):
HTTP Error 403: Forbidden

Downloading https://ossci-datasets.s3.amazonaws.com/mnist/t10k-images-idx3-ubyte.gz
Downloading https://ossci-datasets.s3.amazonaws.com/mnist/t10k-images-idx3-ubyte.gz to ../data/MNIST/raw/t10k-images-idx3-ubyte.gz
Extracting ../data/MNIST/raw/t10k-images-idx3-ubyte.gz to ../data/MNIST/raw

Downloading http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz
Failed to download (trying next):
HTTP Error 403: Forbidden

Downloading https://ossci-datasets.s3.amazonaws.com/mnist/t10k-labels-idx1-ubyte.gz
Downloading https://ossci-datasets.s3.amazonaws.com/mnist/t10k-labels-idx1-ubyte.gz to ../data/MNIST/raw/t10k-labels-idx1-ubyte.gz
Extracting ../data/MNIST/raw/t10k-labels-idx1-ubyte.gz to ../data/MNIST/raw

Train Epoch: 1 [0/60000 (0%)]   Loss: 2.329474
Train Epoch: 1 [640/60000 (1%)] Loss: 1.425185
Train Epoch: 1 [1280/60000 (2%)]        Loss: 0.826809
Train Epoch: 1 [1920/60000 (3%)]        Loss: 0.556883
Train Epoch: 1 [2560/60000 (4%)]        Loss: 0.483756
Train Epoch: 1 [3200/60000 (5%)]        Loss: 0.257975
Train Epoch: 1 [3840/60000 (6%)]        Loss: 0.348440
Train Epoch: 1 [4480/60000 (7%)]        Loss: 0.333388
Train Epoch: 1 [5120/60000 (9%)]        Loss: 0.524236
Train Epoch: 1 [5760/60000 (10%)]       Loss: 0.174640
Train Epoch: 1 [6400/60000 (11%)]       Loss: 0.176443
Train Epoch: 1 [7040/60000 (12%)]       Loss: 0.204510
Train Epoch: 1 [7680/60000 (13%)]       Loss: 0.189632
Train Epoch: 1 [8320/60000 (14%)]       Loss: 0.109184
Train Epoch: 1 [8960/60000 (15%)]       Loss: 0.222831
Train Epoch: 1 [9600/60000 (16%)]       Loss: 0.140818
Train Epoch: 1 [10240/60000 (17%)]      Loss: 0.520451
Train Epoch: 1 [10880/60000 (18%)]      Loss: 0.198344
Train Epoch: 1 [11520/60000 (19%)]      Loss: 0.653131
Train Epoch: 1 [12160/60000 (20%)]      Loss: 0.204425
Train Epoch: 1 [12800/60000 (21%)]      Loss: 0.133712
Train Epoch: 1 [13440/60000 (22%)]      Loss: 0.171830
Train Epoch: 1 [14080/60000 (23%)]      Loss: 0.120295
Train Epoch: 1 [14720/60000 (25%)]      Loss: 0.328583
Train Epoch: 1 [15360/60000 (26%)]      Loss: 0.130127
Train Epoch: 1 [16000/60000 (27%)]      Loss: 0.309889
Train Epoch: 1 [16640/60000 (28%)]      Loss: 0.158437
Train Epoch: 1 [17280/60000 (29%)]      Loss: 0.056400
Train Epoch: 1 [17920/60000 (30%)]      Loss: 0.112370
Train Epoch: 1 [18560/60000 (31%)]      Loss: 0.165443
Train Epoch: 1 [19200/60000 (32%)]      Loss: 0.178987
Train Epoch: 1 [19840/60000 (33%)]      Loss: 0.120552
Train Epoch: 1 [20480/60000 (34%)]      Loss: 0.077266
Train Epoch: 1 [21120/60000 (35%)]      Loss: 0.251985
Train Epoch: 1 [21760/60000 (36%)]      Loss: 0.028953
Train Epoch: 1 [22400/60000 (37%)]      Loss: 0.043980
Train Epoch: 1 [23040/60000 (38%)]      Loss: 0.176588
Train Epoch: 1 [23680/60000 (39%)]      Loss: 0.323919
Train Epoch: 1 [24320/60000 (41%)]      Loss: 0.013553
Train Epoch: 1 [24960/60000 (42%)]      Loss: 0.212146
Train Epoch: 1 [25600/60000 (43%)]      Loss: 0.109924
Train Epoch: 1 [26240/60000 (44%)]      Loss: 0.156672
Train Epoch: 1 [26880/60000 (45%)]      Loss: 0.260443
Train Epoch: 1 [27520/60000 (46%)]      Loss: 0.168455
Train Epoch: 1 [28160/60000 (47%)]      Loss: 0.059279
Train Epoch: 1 [28800/60000 (48%)]      Loss: 0.113021
Train Epoch: 1 [29440/60000 (49%)]      Loss: 0.085967
Train Epoch: 1 [30080/60000 (50%)]      Loss: 0.114650
Train Epoch: 1 [30720/60000 (51%)]      Loss: 0.157801
Train Epoch: 1 [31360/60000 (52%)]      Loss: 0.197543
Train Epoch: 1 [32000/60000 (53%)]      Loss: 0.119325
Train Epoch: 1 [32640/60000 (54%)]      Loss: 0.222015
Train Epoch: 1 [33280/60000 (55%)]      Loss: 0.172127
Train Epoch: 1 [33920/60000 (57%)]      Loss: 0.030576
Train Epoch: 1 [34560/60000 (58%)]      Loss: 0.090383
Train Epoch: 1 [35200/60000 (59%)]      Loss: 0.231498
Train Epoch: 1 [35840/60000 (60%)]      Loss: 0.242864
Train Epoch: 1 [36480/60000 (61%)]      Loss: 0.026988
Train Epoch: 1 [37120/60000 (62%)]      Loss: 0.066209
Train Epoch: 1 [37760/60000 (63%)]      Loss: 0.263972
Train Epoch: 1 [38400/60000 (64%)]      Loss: 0.117417
Train Epoch: 1 [39040/60000 (65%)]      Loss: 0.026811
Train Epoch: 1 [39680/60000 (66%)]      Loss: 0.112190
Train Epoch: 1 [40320/60000 (67%)]      Loss: 0.105352
Train Epoch: 1 [40960/60000 (68%)]      Loss: 0.213338
Train Epoch: 1 [41600/60000 (69%)]      Loss: 0.137817
Train Epoch: 1 [42240/60000 (70%)]      Loss: 0.042226
Train Epoch: 1 [42880/60000 (71%)]      Loss: 0.173074
Train Epoch: 1 [43520/60000 (72%)]      Loss: 0.190492
Train Epoch: 1 [44160/60000 (74%)]      Loss: 0.028924
Train Epoch: 1 [44800/60000 (75%)]      Loss: 0.048417
Train Epoch: 1 [45440/60000 (76%)]      Loss: 0.152409
Train Epoch: 1 [46080/60000 (77%)]      Loss: 0.163627
Train Epoch: 1 [46720/60000 (78%)]      Loss: 0.303969
Train Epoch: 1 [47360/60000 (79%)]      Loss: 0.100144
Train Epoch: 1 [48000/60000 (80%)]      Loss: 0.108896
Train Epoch: 1 [48640/60000 (81%)]      Loss: 0.080212
Train Epoch: 1 [49280/60000 (82%)]      Loss: 0.056271
Train Epoch: 1 [49920/60000 (83%)]      Loss: 0.064962
Train Epoch: 1 [50560/60000 (84%)]      Loss: 0.089722
Train Epoch: 1 [51200/60000 (85%)]      Loss: 0.110190
Train Epoch: 1 [51840/60000 (86%)]      Loss: 0.021843
Train Epoch: 1 [52480/60000 (87%)]      Loss: 0.019528
Train Epoch: 1 [53120/60000 (88%)]      Loss: 0.280549
Train Epoch: 1 [53760/60000 (90%)]      Loss: 0.067030
Train Epoch: 1 [54400/60000 (91%)]      Loss: 0.028754
Train Epoch: 1 [55040/60000 (92%)]      Loss: 0.023544
Train Epoch: 1 [55680/60000 (93%)]      Loss: 0.161516
Train Epoch: 1 [56320/60000 (94%)]      Loss: 0.083252
Train Epoch: 1 [56960/60000 (95%)]      Loss: 0.050743
Train Epoch: 1 [57600/60000 (96%)]      Loss: 0.144901
Train Epoch: 1 [58240/60000 (97%)]      Loss: 0.004297
Train Epoch: 1 [58880/60000 (98%)]      Loss: 0.004678
Train Epoch: 1 [59520/60000 (99%)]      Loss: 0.003761

Test set: Average loss: 0.0485, Accuracy: 9817/10000 (98%)

Train Epoch: 2 [0/60000 (0%)]   Loss: 0.056159
Train Epoch: 2 [640/60000 (1%)] Loss: 0.031085
Train Epoch: 2 [1280/60000 (2%)]        Loss: 0.059390
Train Epoch: 2 [1920/60000 (3%)]        Loss: 0.227593
Train Epoch: 2 [2560/60000 (4%)]        Loss: 0.038973
Train Epoch: 2 [3200/60000 (5%)]        Loss: 0.018625
Train Epoch: 2 [3840/60000 (6%)]        Loss: 0.010728
Train Epoch: 2 [4480/60000 (7%)]        Loss: 0.114644
Train Epoch: 2 [5120/60000 (9%)]        Loss: 0.186310
Train Epoch: 2 [5760/60000 (10%)]       Loss: 0.061912
Train Epoch: 2 [6400/60000 (11%)]       Loss: 0.208459
Train Epoch: 2 [7040/60000 (12%)]       Loss: 0.170969
Train Epoch: 2 [7680/60000 (13%)]       Loss: 0.024932
Train Epoch: 2 [8320/60000 (14%)]       Loss: 0.007327
Train Epoch: 2 [8960/60000 (15%)]       Loss: 0.231445
Train Epoch: 2 [9600/60000 (16%)]       Loss: 0.018403
Train Epoch: 2 [10240/60000 (17%)]      Loss: 0.204720
Train Epoch: 2 [10880/60000 (18%)]      Loss: 0.015609
Train Epoch: 2 [11520/60000 (19%)]      Loss: 0.121538
Train Epoch: 2 [12160/60000 (20%)]      Loss: 0.123560
Train Epoch: 2 [12800/60000 (21%)]      Loss: 0.069249
Train Epoch: 2 [13440/60000 (22%)]      Loss: 0.078495
Train Epoch: 2 [14080/60000 (23%)]      Loss: 0.007350
Train Epoch: 2 [14720/60000 (25%)]      Loss: 0.120804
Train Epoch: 2 [15360/60000 (26%)]      Loss: 0.053632
Train Epoch: 2 [16000/60000 (27%)]      Loss: 0.040169
Train Epoch: 2 [16640/60000 (28%)]      Loss: 0.152507
Train Epoch: 2 [17280/60000 (29%)]      Loss: 0.015645
Train Epoch: 2 [17920/60000 (30%)]      Loss: 0.094933
Train Epoch: 2 [18560/60000 (31%)]      Loss: 0.023420
Train Epoch: 2 [19200/60000 (32%)]      Loss: 0.049777
Train Epoch: 2 [19840/60000 (33%)]      Loss: 0.136624
Train Epoch: 2 [20480/60000 (34%)]      Loss: 0.014840
Train Epoch: 2 [21120/60000 (35%)]      Loss: 0.134831
Train Epoch: 2 [21760/60000 (36%)]      Loss: 0.021501
….
….
Train Epoch: 14 [49280/60000 (82%)]     Loss: 0.010605
Train Epoch: 14 [49920/60000 (83%)]     Loss: 0.008988
Train Epoch: 14 [50560/60000 (84%)]     Loss: 0.013190
Train Epoch: 14 [51200/60000 (85%)]     Loss: 0.009130
Train Epoch: 14 [51840/60000 (86%)]     Loss: 0.013948
Train Epoch: 14 [52480/60000 (87%)]     Loss: 0.002775
Train Epoch: 14 [53120/60000 (88%)]     Loss: 0.005400
Train Epoch: 14 [53760/60000 (90%)]     Loss: 0.078879
Train Epoch: 14 [54400/60000 (91%)]     Loss: 0.033563
Train Epoch: 14 [55040/60000 (92%)]     Loss: 0.002519
Train Epoch: 14 [55680/60000 (93%)]     Loss: 0.010255
Train Epoch: 14 [56320/60000 (94%)]     Loss: 0.003403
Train Epoch: 14 [56960/60000 (95%)]     Loss: 0.023588
Train Epoch: 14 [57600/60000 (96%)]     Loss: 0.004698
Train Epoch: 14 [58240/60000 (97%)]     Loss: 0.003270
Train Epoch: 14 [58880/60000 (98%)]     Loss: 0.000254
Train Epoch: 14 [59520/60000 (99%)]     Loss: 0.000367

Test set: Average loss: 0.0260, Accuracy: 9910/10000 (99%)

Model training was completed!
Has check point file created? {0}  True
The End!
🕒 Total runtime of the training script: 1997 seconds
✅ Model checkpoint saved correctly to the host system. Size: 4.6M
⏱ Checking the training script can resume from a checkpoint...
100.0%
100.0%
100.0%
100.0%
chosen device is cpu
Downloading http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz
Failed to download (trying next):
HTTP Error 403: Forbidden

Downloading https://ossci-datasets.s3.amazonaws.com/mnist/train-images-idx3-ubyte.gz
Downloading https://ossci-datasets.s3.amazonaws.com/mnist/train-images-idx3-ubyte.gz to ../data/MNIST/raw/train-images-idx3-ubyte.gz

Resume model has been called!
Training resume option was chosen and model loaded successfully!
Train Epoch: 1 [0/60000 (0%)]   Loss: 0.000838
Train Epoch: 1 [640/60000 (1%)] Loss: 0.002484
Train Epoch: 1 [1280/60000 (2%)]        Loss: 0.027245
Train Epoch: 1 [1920/60000 (3%)]        Loss: 0.186916
Train Epoch: 1 [2560/60000 (4%)]        Loss: 0.027481
Train Epoch: 1 [3200/60000 (5%)]        Loss: 0.068376
…
….
Train Epoch: 14 [56960/60000 (95%)]     Loss: 0.028248
Train Epoch: 14 [57600/60000 (96%)]     Loss: 0.003172
Train Epoch: 14 [58240/60000 (97%)]     Loss: 0.000175
Train Epoch: 14 [58880/60000 (98%)]     Loss: 0.000383
Train Epoch: 14 [59520/60000 (99%)]     Loss: 0.000118

Test set: Average loss: 0.0290, Accuracy: 9918/10000 (99%)

Model training was completed!
Has check point file created? {0}  True
The End!
🎉 All checks passed!
gitpod /workspace/emlo4-session-02-thamizhannal (main) $
```
