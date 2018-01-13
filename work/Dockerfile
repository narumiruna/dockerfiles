FROM nvidia/cuda:8.0-cudnn6-devel

LABEL maintainer="Narumi"

RUN apt-get update &&\
    apt-get -y dist-upgrade &&\
    apt-get install -y python3-pip \
                       python3-tk \
                       locales \
                       vim \
                       wget \
                       htop \
                       ssh \
                       git \
                       unzip \
                       libcupti-dev &&\
    rm -rf /var/lib/apt/lists/*

RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

RUN pip3 install -U pip &&\
    pip3 install -U http://download.pytorch.org/whl/cu80/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl \
                    torchvision \
                    tensorflow-gpu \
                    jupyter \
                    GPUtil \
                    ggplot &&\
    rm -rf ~/.cache/pip

WORKDIR /workspace
RUN echo 'jupyter notebook --allow-root --no-browser --ip="*"' > /tmp/run.sh &&\
    chmod +x /tmp/run.sh

CMD /tmp/run.sh
