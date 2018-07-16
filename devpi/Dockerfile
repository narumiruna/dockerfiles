FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    python3-pip \
    nginx \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install pip==9.0.3 \
    && pip3 install devpi \
    && rm -rf ~/.cache/pip

COPY nginx-devpi.conf /etc/nginx/conf.d/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

COPY run.sh .
CMD [ "/bin/bash", "run.sh" ]
