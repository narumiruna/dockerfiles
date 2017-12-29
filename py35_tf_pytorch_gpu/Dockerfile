FROM nvidia/cuda:8.0-cudnn6-runtime
RUN apt-get update &&\
    apt-get install -y\
    python3-dev\
    python3-pip\
    python3-tk\
    libcupti-dev\
    vim\
    nano\
    git\
    wget\
    unzip\
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install -U pip &&\
    pip3 install -U tensorflow-gpu &&\
    pip3 install -U http://download.pytorch.org/whl/cu80/torch-0.2.0.post3-cp35-cp35m-manylinux1_x86_64.whl &&\
    pip3 install -U torchvision &&\
    pip3 install -U jupyter\
    keras\
    h5py\
    matplotlib\
    && rm -rf ~/.cache/pip

RUN mkdir /notebook
WORKDIR /notebook
RUN echo 'jupyter notebook --allow-root --no-browser --ip="*" --notebook-dir="/notebook"' > /run.sh &&\
    chmod +x /run.sh
CMD /run.sh
