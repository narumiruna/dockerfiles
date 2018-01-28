FROM nvidia/cuda:8.0-cudnn6-devel

LABEL maintainer="Narumi"

ENV LANG=C.UTF-8 \
    LANGUAGE=C.UTF-8 \
    LC_ALL=C.UTF-8

COPY sources.list /etc/apt
RUN apt-get update && \
    apt-get install -y python3-pip \
                       python3-setuptools \
                       python3-tk \
                       vim \
                       wget \
                       htop \
                       iftop \
                       ssh \
                       autossh \
                       git \
                       unzip \
                       libcupti-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt /
RUN pip3 install -U pip && \
    pip3 install -U -r requirements.txt && \
    rm -rf ~/.cache/pip

WORKDIR /workspace
RUN echo 'jupyter notebook --allow-root --no-browser --ip="*"' > /run.sh && \
    chmod +x /run.sh
CMD /run.sh
