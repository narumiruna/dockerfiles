FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    curl \
    git \
    jq \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install Azure CLI
RUN echo 'deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ bionic main' | \
    tee /etc/apt/sources.list.d/azure-cli.list \
    && curl -L https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && apt-get update && apt-get install -y azure-cli && rm -rf /var/lib/apt/lists/*

RUN pip3 install pip==9.0.3 && pip3 install \
    azure-mgmt-batchai==2.0.0 \
    futures==3.1.1 \
    jsonschema==2.6.0 \
    jupyter \
    numpy==1.14.3 \
    requests==2.18.4 \
    six==1.11.0 \
    && pip3 install azure==2.0.0 \
    && rm -rf ~/.cache/pip

WORKDIR /workspace
RUN git clone https://github.com/Azure/BatchAI.git
COPY start.sh /usr/local/bin
CMD [ "start.sh" ]
