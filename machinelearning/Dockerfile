FROM nvidia/cuda:9.0-cudnn7-devel

LABEL maintainer="Narumi"

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

COPY sources.list /etc/apt

RUN apt-get update && apt-get install -y \
    locales \
    sudo \
    python3-pip \
    python3-tk \
    vim \
    wget \
    htop \
    iftop \
    ssh \
    autossh \
    git \
    unzip \
    zsh \
    libcupti-dev \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /
RUN pip3 install -U pip==9.0.3 \
    && pip3 install -U -r requirements.txt\
    && rm -rf ~/.cache/pip \
    && rm /requirements.txt

COPY vimrc /root/.vimrc
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

COPY zshrc /root/.zshrc
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && chsh -s /usr/bin/zsh

WORKDIR /workspace
RUN echo 'jupyter notebook --allow-root --no-browser --ip="*"' > /run.sh\
    && chmod +x /run.sh

CMD /run.sh
