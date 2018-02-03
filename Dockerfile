FROM nvidia/cuda:8.0-cudnn6-devel

LABEL maintainer="Narumi"

ENV LANG=C.UTF-8 \
    LANGUAGE=C.UTF-8 \
    LC_ALL=C.UTF-8

COPY sources.list /etc/apt
RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y \
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
        libcupti-dev && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt /
RUN pip3 install -U pip && \
    pip3 install -U -r requirements.txt && \
    rm -rf ~/.cache/pip && \
    rm /requirements.txt

COPY vimrc /root/.vimrc
RUN git clone https://github.com/VundleVim/Vundle.vim.git /root/.vim/bundle/Vundle.vim

WORKDIR /workspace
RUN echo 'jupyter notebook --allow-root --no-browser --ip="*"' > /run.sh && \
    chmod +x /run.sh
CMD /run.sh
