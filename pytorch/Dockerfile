FROM narumi/python

LABEL maintainer="Narumi"

RUN pip3 install -U http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl &&\
    pip3 install -U torchvision &&\
    rm -rf ~/.cache/pip
