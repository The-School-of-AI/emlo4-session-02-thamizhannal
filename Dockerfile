FROM python:3.9-slim
WORKDIR /workspace
RUN pip install --no-cache-dir numpy==1.23.4 black torch==1.12.1+cpu torchvision==0.13.1+cpu --extra-index-url https://download.pytorch.org/whl/cpu
COPY train.py .
CMD ["python", "train.py"]
