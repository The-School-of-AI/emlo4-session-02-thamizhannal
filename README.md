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
$git clone https://github.com/The-School-of-AI/emlo4-session-02-thamizhannal.git

### Build the docker container
$docker build --tag emlo4 . 

### List the created container
$docker container ls
CONTAINER ID   IMAGE                             COMMAND                  CREATED             STATUS             PORTS                  NAMES
1d559729bf3d   emlo4                             "bash"                   About an hour ago   Up About an hour                          gallant_wozniak
aa7bd9239360   docker/welcome-to-docker:latest   "/docker-entrypoint.…"   3 days ago          Up 3 days          0.0.0.0:8088->80/tcp   welcome-to-docker
user@ emlo4-session-02-thamizhannal %

### Run the docker container
$docker run -it emlo4 

### Run grading.sh script
$sh tests/grading.sh

### output:
🚚 Building the Docker image...
[+] Building 1.9s (11/11) FINISHED                                                                                                                                                    docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                                                                  0.0s
 => => transferring dockerfile: 534B                                                                                                                                                                  0.0s
 => [internal] load metadata for docker.io/library/python:3.9-slim                                                                                                                                    1.8s
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                                                         0.0s
 => [internal] load .dockerignore                                                                                                                                                                     0.0s
 => => transferring context: 2B                                                                                                                                                                       0.0s
 => [1/5] FROM docker.io/library/python:3.9-slim@sha256:ebd576d329738143a3d5429bb57559cb86ef3355560b9aa4f53f3b7965f37fb1                                                                              0.0s
 => => resolve docker.io/library/python:3.9-slim@sha256:ebd576d329738143a3d5429bb57559cb86ef3355560b9aa4f53f3b7965f37fb1                                                                              0.0s
 => [internal] load build context                                                                                                                                                                     0.0s
 => => transferring context: 2.37kB                                                                                                                                                                   0.0s
 => CACHED [2/5] WORKDIR /workspace                                                                                                                                                                   0.0s
 => CACHED [3/5] COPY requirements.txt requirements.txt                                                                                                                                               0.0s
 => CACHED [4/5] RUN pip install --no-cache-dir -r requirements.txt                                                                                                                                   0.0s
 => CACHED [5/5] COPY . .                                                                                                                                                                             0.0s
 => exporting to image                                                                                                                                                                                0.1s
 => => exporting layers                                                                                                                                                                               0.0s
 => => exporting manifest sha256:68d42d73006af13342472ae9d340fe91f2f4293449fdf39628491b459062e53e                                                                                                     0.0s
 => => exporting config sha256:46b6759a273feb8caed5a6e97a5462a04e44507c4aa8db447826267456f6ebd6                                                                                                       0.0s
 => => exporting attestation manifest sha256:7b1494a062d6717b8f789a9ec9debfef153bd4baf5a34fc686ca91156d1c4643                                                                                         0.0s
 => => exporting manifest list sha256:4e166f248cb0653e2c62c2354572980c7ce7e611e3a6527469ec9a70c6399ad1                                                                                                0.0s
 => => naming to docker.io/library/student_image:latest                                                                                                                                               0.0s
 => => unpacking to docker.io/library/student_image:latest                                                                                                                                            0.0s

View build details: docker-desktop://dashboard/build/desktop-linux/desktop-linux/jtnqrl314rxlney7pn1v0csgu

What's next:
    View a summary of image vulnerabilities and recommendations → docker scout quickview 
✅ Docker image size is acceptable. Size: 0 GB 130 MB
🏫 Running the training script...
/usr/local/lib/python3.9/site-packages/torchvision/io/image.py:13: UserWarning: Failed to load image Python extension: 
  warn(f"Failed to load image Python extension: {e}")
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
Train Epoch: 1 [640/60000 (1%)] Loss: 1.425063
Train Epoch: 1 [1280/60000 (2%)]        Loss: 0.815459
Train Epoch: 1 [1920/60000 (3%)]        Loss: 0.535510
Train Epoch: 1 [2560/60000 (4%)]        Loss: 0.425536
Train Epoch: 1 [3200/60000 (5%)]        Loss: 0.253121
Train Epoch: 1 [3840/60000 (6%)]        Loss: 0.353541
Train Epoch: 1 [4480/60000 (7%)]        Loss: 0.331541
Train Epoch: 1 [5120/60000 (9%)]        Loss: 0.504406
Train Epoch: 1 [5760/60000 (10%)]       Loss: 0.129043
Train Epoch: 1 [6400/60000 (11%)]       Loss: 0.197371
Train Epoch: 1 [7040/60000 (12%)]       Loss: 0.195584
Train Epoch: 1 [7680/60000 (13%)]       Loss: 0.187229
Train Epoch: 1 [8320/60000 (14%)]       Loss: 0.117254
Train Epoch: 1 [8960/60000 (15%)]       Loss: 0.206565
Train Epoch: 1 [9600/60000 (16%)]       Loss: 0.166992
Train Epoch: 1 [10240/60000 (17%)]      Loss: 0.529057
Train Epoch: 1 [10880/60000 (18%)]      Loss: 0.231051
Train Epoch: 1 [11520/60000 (19%)]      Loss: 0.688303
Train Epoch: 1 [12160/60000 (20%)]      Loss: 0.162435
Train Epoch: 1 [12800/60000 (21%)]      Loss: 0.124746
Train Epoch: 1 [13440/60000 (22%)]      Loss: 0.165168
Train Epoch: 1 [14080/60000 (23%)]      Loss: 0.135886
Train Epoch: 1 [14720/60000 (25%)]      Loss: 0.288403
Train Epoch: 1 [15360/60000 (26%)]      Loss: 0.172438
Train Epoch: 1 [16000/60000 (27%)]      Loss: 0.259826
Train Epoch: 1 [16640/60000 (28%)]      Loss: 0.135252
Train Epoch: 1 [17280/60000 (29%)]      Loss: 0.054378
Train Epoch: 1 [17920/60000 (30%)]      Loss: 0.091488
Train Epoch: 1 [18560/60000 (31%)]      Loss: 0.190846
Train Epoch: 1 [19200/60000 (32%)]      Loss: 0.199828
Train Epoch: 1 [19840/60000 (33%)]      Loss: 0.151593
Train Epoch: 1 [20480/60000 (34%)]      Loss: 0.051835
Train Epoch: 1 [21120/60000 (35%)]      Loss: 0.259138
Train Epoch: 1 [21760/60000 (36%)]      Loss: 0.029720
Train Epoch: 1 [22400/60000 (37%)]      Loss: 0.039324
Train Epoch: 1 [23040/60000 (38%)]      Loss: 0.144744
Train Epoch: 1 [23680/60000 (39%)]      Loss: 0.280507
Train Epoch: 1 [24320/60000 (41%)]      Loss: 0.024202
Train Epoch: 1 [24960/60000 (42%)]      Loss: 0.177954
Train Epoch: 1 [25600/60000 (43%)]      Loss: 0.060036
Train Epoch: 1 [26240/60000 (44%)]      Loss: 0.163630
Train Epoch: 1 [26880/60000 (45%)]      Loss: 0.288071
Train Epoch: 1 [27520/60000 (46%)]      Loss: 0.153297
Train Epoch: 1 [28160/60000 (47%)]      Loss: 0.059527
Train Epoch: 1 [28800/60000 (48%)]      Loss: 0.103554
Train Epoch: 1 [29440/60000 (49%)]      Loss: 0.069306
Train Epoch: 1 [30080/60000 (50%)]      Loss: 0.076647
Train Epoch: 1 [30720/60000 (51%)]      Loss: 0.101913
Train Epoch: 1 [31360/60000 (52%)]      Loss: 0.157715
Train Epoch: 1 [32000/60000 (53%)]      Loss: 0.141886
Train Epoch: 1 [32640/60000 (54%)]      Loss: 0.161094
Train Epoch: 1 [33280/60000 (55%)]      Loss: 0.190920
Train Epoch: 1 [33920/60000 (57%)]      Loss: 0.046335
Train Epoch: 1 [34560/60000 (58%)]      Loss: 0.059568
Train Epoch: 1 [35200/60000 (59%)]      Loss: 0.285277
Train Epoch: 1 [35840/60000 (60%)]      Loss: 0.176094
Train Epoch: 1 [36480/60000 (61%)]      Loss: 0.043614
Train Epoch: 1 [37120/60000 (62%)]      Loss: 0.088287
Train Epoch: 1 [37760/60000 (63%)]      Loss: 0.234274
Train Epoch: 1 [38400/60000 (64%)]      Loss: 0.110716
Train Epoch: 1 [39040/60000 (65%)]      Loss: 0.017630
Train Epoch: 1 [39680/60000 (66%)]      Loss: 0.058225
Train Epoch: 1 [40320/60000 (67%)]      Loss: 0.089894
Train Epoch: 1 [40960/60000 (68%)]      Loss: 0.181166
Train Epoch: 1 [41600/60000 (69%)]      Loss: 0.132599
Train Epoch: 1 [42240/60000 (70%)]      Loss: 0.038554
Train Epoch: 1 [42880/60000 (71%)]      Loss: 0.165087
Train Epoch: 1 [43520/60000 (72%)]      Loss: 0.177218
Train Epoch: 1 [44160/60000 (74%)]      Loss: 0.032753
Train Epoch: 1 [44800/60000 (75%)]      Loss: 0.063044
Train Epoch: 1 [45440/60000 (76%)]      Loss: 0.172649
Train Epoch: 1 [46080/60000 (77%)]      Loss: 0.130191
Train Epoch: 1 [46720/60000 (78%)]      Loss: 0.277948
Train Epoch: 1 [47360/60000 (79%)]      Loss: 0.145778
Train Epoch: 1 [48000/60000 (80%)]      Loss: 0.137148
Train Epoch: 1 [48640/60000 (81%)]      Loss: 0.037471
Train Epoch: 1 [49280/60000 (82%)]      Loss: 0.038911
Train Epoch: 1 [49920/60000 (83%)]      Loss: 0.095285
Train Epoch: 1 [50560/60000 (84%)]      Loss: 0.080116
Train Epoch: 1 [51200/60000 (85%)]      Loss: 0.079337
Train Epoch: 1 [51840/60000 (86%)]      Loss: 0.024941
Train Epoch: 1 [52480/60000 (87%)]      Loss: 0.018485
Train Epoch: 1 [53120/60000 (88%)]      Loss: 0.211003
Train Epoch: 1 [53760/60000 (90%)]      Loss: 0.112139
Train Epoch: 1 [54400/60000 (91%)]      Loss: 0.026858
Train Epoch: 1 [55040/60000 (92%)]      Loss: 0.033771
Train Epoch: 1 [55680/60000 (93%)]      Loss: 0.143727
Train Epoch: 1 [56320/60000 (94%)]      Loss: 0.064364
Train Epoch: 1 [56960/60000 (95%)]      Loss: 0.070444
Train Epoch: 1 [57600/60000 (96%)]      Loss: 0.160829
Train Epoch: 1 [58240/60000 (97%)]      Loss: 0.003784
Train Epoch: 1 [58880/60000 (98%)]      Loss: 0.020328
Train Epoch: 1 [59520/60000 (99%)]      Loss: 0.002335

Test set: Average loss: 0.0494, Accuracy: 9836/10000 (98%)

Model training was completed!
Has check point file created? {0}  True
The End!
🕒 Total runtime of the training script: 176 seconds
✅ Model checkpoint saved correctly to the host system. Size: 4.6M
⏱ Checking the training script can resume from a checkpoint...
/usr/local/lib/python3.9/site-packages/torchvision/io/image.py:13: UserWarning: Failed to load image Python extension: 
  warn(f"Failed to load image Python extension: {e}")
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

Resume model has been called!
Training resume option was chosen and model loaded successfully!
Train Epoch: 1 [0/60000 (0%)]   Loss: 0.047834
Train Epoch: 1 [640/60000 (1%)] Loss: 0.023449
Train Epoch: 1 [1280/60000 (2%)]        Loss: 0.038988
Train Epoch: 1 [1920/60000 (3%)]        Loss: 0.150634
Train Epoch: 1 [2560/60000 (4%)]        Loss: 0.074310
Train Epoch: 1 [3200/60000 (5%)]        Loss: 0.150028
Train Epoch: 1 [3840/60000 (6%)]        Loss: 0.010851
Train Epoch: 1 [4480/60000 (7%)]        Loss: 0.028438
Train Epoch: 1 [5120/60000 (9%)]        Loss: 0.056658
Train Epoch: 1 [5760/60000 (10%)]       Loss: 0.138486
Train Epoch: 1 [6400/60000 (11%)]       Loss: 0.140040
Train Epoch: 1 [7040/60000 (12%)]       Loss: 0.164516
Train Epoch: 1 [7680/60000 (13%)]       Loss: 0.059189
Train Epoch: 1 [8320/60000 (14%)]       Loss: 0.009666
Train Epoch: 1 [8960/60000 (15%)]       Loss: 0.130037
Train Epoch: 1 [9600/60000 (16%)]       Loss: 0.025432
Train Epoch: 1 [10240/60000 (17%)]      Loss: 0.130226
Train Epoch: 1 [10880/60000 (18%)]      Loss: 0.005827
Train Epoch: 1 [11520/60000 (19%)]      Loss: 0.054460
Train Epoch: 1 [12160/60000 (20%)]      Loss: 0.025008
Train Epoch: 1 [12800/60000 (21%)]      Loss: 0.029659
Train Epoch: 1 [13440/60000 (22%)]      Loss: 0.006186
Train Epoch: 1 [14080/60000 (23%)]      Loss: 0.006276
Train Epoch: 1 [14720/60000 (25%)]      Loss: 0.018290
Train Epoch: 1 [15360/60000 (26%)]      Loss: 0.012348
Train Epoch: 1 [16000/60000 (27%)]      Loss: 0.029028
Train Epoch: 1 [16640/60000 (28%)]      Loss: 0.023585
Train Epoch: 1 [17280/60000 (29%)]      Loss: 0.000678
Train Epoch: 1 [17920/60000 (30%)]      Loss: 0.001505
Train Epoch: 1 [18560/60000 (31%)]      Loss: 0.006152
Train Epoch: 1 [19200/60000 (32%)]      Loss: 0.017899
Train Epoch: 1 [19840/60000 (33%)]      Loss: 0.011329
Train Epoch: 1 [20480/60000 (34%)]      Loss: 0.039159
Train Epoch: 1 [21120/60000 (35%)]      Loss: 0.028069
Train Epoch: 1 [21760/60000 (36%)]      Loss: 0.001623
Train Epoch: 1 [22400/60000 (37%)]      Loss: 0.043275
Train Epoch: 1 [23040/60000 (38%)]      Loss: 0.009784
Train Epoch: 1 [23680/60000 (39%)]      Loss: 0.094381
Train Epoch: 1 [24320/60000 (41%)]      Loss: 0.003114
Train Epoch: 1 [24960/60000 (42%)]      Loss: 0.021649
Train Epoch: 1 [25600/60000 (43%)]      Loss: 0.009259
Train Epoch: 1 [26240/60000 (44%)]      Loss: 0.005267
Train Epoch: 1 [26880/60000 (45%)]      Loss: 0.043813
Train Epoch: 1 [27520/60000 (46%)]      Loss: 0.025677
Train Epoch: 1 [28160/60000 (47%)]      Loss: 0.034857
Train Epoch: 1 [28800/60000 (48%)]      Loss: 0.002923
Train Epoch: 1 [29440/60000 (49%)]      Loss: 0.002004
Train Epoch: 1 [30080/60000 (50%)]      Loss: 0.027141
Train Epoch: 1 [30720/60000 (51%)]      Loss: 0.012594
Train Epoch: 1 [31360/60000 (52%)]      Loss: 0.025095
Train Epoch: 1 [32000/60000 (53%)]      Loss: 0.090492
Train Epoch: 1 [32640/60000 (54%)]      Loss: 0.005431
Train Epoch: 1 [33280/60000 (55%)]      Loss: 0.017290
Train Epoch: 1 [33920/60000 (57%)]      Loss: 0.001245
Train Epoch: 1 [34560/60000 (58%)]      Loss: 0.000827
Train Epoch: 1 [35200/60000 (59%)]      Loss: 0.175597
Train Epoch: 1 [35840/60000 (60%)]      Loss: 0.025086
Train Epoch: 1 [36480/60000 (61%)]      Loss: 0.004077
Train Epoch: 1 [37120/60000 (62%)]      Loss: 0.009263
Train Epoch: 1 [37760/60000 (63%)]      Loss: 0.215770
Train Epoch: 1 [38400/60000 (64%)]      Loss: 0.068677
Train Epoch: 1 [39040/60000 (65%)]      Loss: 0.003208
Train Epoch: 1 [39680/60000 (66%)]      Loss: 0.065808
Train Epoch: 1 [40320/60000 (67%)]      Loss: 0.006842
Train Epoch: 1 [40960/60000 (68%)]      Loss: 0.076130
Train Epoch: 1 [41600/60000 (69%)]      Loss: 0.060108
Train Epoch: 1 [42240/60000 (70%)]      Loss: 0.005848
Train Epoch: 1 [42880/60000 (71%)]      Loss: 0.028040
Train Epoch: 1 [43520/60000 (72%)]      Loss: 0.048440
Train Epoch: 1 [44160/60000 (74%)]      Loss: 0.002032
Train Epoch: 1 [44800/60000 (75%)]      Loss: 0.008389
Train Epoch: 1 [45440/60000 (76%)]      Loss: 0.027292
Train Epoch: 1 [46080/60000 (77%)]      Loss: 0.040331
Train Epoch: 1 [46720/60000 (78%)]      Loss: 0.029665
Train Epoch: 1 [47360/60000 (79%)]      Loss: 0.006447
Train Epoch: 1 [48000/60000 (80%)]      Loss: 0.039225
Train Epoch: 1 [48640/60000 (81%)]      Loss: 0.000654
Train Epoch: 1 [49280/60000 (82%)]      Loss: 0.002623
Train Epoch: 1 [49920/60000 (83%)]      Loss: 0.003744
Train Epoch: 1 [50560/60000 (84%)]      Loss: 0.012413
Train Epoch: 1 [51200/60000 (85%)]      Loss: 0.028131
Train Epoch: 1 [51840/60000 (86%)]      Loss: 0.004248
Train Epoch: 1 [52480/60000 (87%)]      Loss: 0.000511
Train Epoch: 1 [53120/60000 (88%)]      Loss: 0.149504
Train Epoch: 1 [53760/60000 (90%)]      Loss: 0.146420
Train Epoch: 1 [54400/60000 (91%)]      Loss: 0.002015
Train Epoch: 1 [55040/60000 (92%)]      Loss: 0.002324
Train Epoch: 1 [55680/60000 (93%)]      Loss: 0.010910
Train Epoch: 1 [56320/60000 (94%)]      Loss: 0.012485
Train Epoch: 1 [56960/60000 (95%)]      Loss: 0.007006
Train Epoch: 1 [57600/60000 (96%)]      Loss: 0.036424
Train Epoch: 1 [58240/60000 (97%)]      Loss: 0.000104
Train Epoch: 1 [58880/60000 (98%)]      Loss: 0.000204
Train Epoch: 1 [59520/60000 (99%)]      Loss: 0.002498

Test set: Average loss: 0.0429, Accuracy: 9870/10000 (99%)

Model training was completed!
Has check point file created? {0}  True
The End!
🎉 All checks passed!
(base) user@ emlo4-session-02-thamizhannal % 