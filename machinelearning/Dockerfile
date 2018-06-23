FROM nvidia/cuda:9.0-cudnn7-devel

LABEL maintainer="Narumi"

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

RUN echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial main restricted universe multiverse' > /etc/apt/sources.list \
    && echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-updates main restricted universe multiverse' >> /etc/apt/sources.list \
    && echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-backports main restricted universe multiverse' >> /etc/apt/sources.list \
    && echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-security main restricted universe multiverse' >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    git \
    htop \
    iftop \
    libcupti-dev \
    python3-pip \
    unzip \
    vim \
    wget \
    zsh \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install -U pip==9.0.3 \
    && pip3 install -U \
    beautifulsoup4 \
    bokeh \
    h5py \
    http://download.pytorch.org/whl/cu90/torch-0.4.0-cp35-cp35m-linux_x86_64.whl \
    jupyter \
    keras \
    matplotlib \
    pandas \
    requests \
    scikit-image \
    scikit-learn \
    tablib \
    tensorflow-gpu==1.8.0 \
    torchvision \
    && rm -rf ~/.cache/pip

COPY zshrc /root/.zshrc
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && chsh -s /usr/bin/zsh

WORKDIR /workspace
RUN echo 'jupyter notebook --allow-root --no-browser --ip="*"' > /run.sh \
    && chmod +x /run.sh

CMD /run.sh
