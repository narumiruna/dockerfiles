FROM python:3

RUN pip3 install -U pip \
    && pip3 install mlflow \
    && rm -rf ~/.cache/pip

ENV URI /mlruns
ENV HOST 0.0.0.0
ENV PORT 5000
ENV WORKERS 4

RUN echo mlflow server --default-artifact-root $URI --host $HOST --port $PORT --workers $WORKERS > /run.sh
CMD /run.sh
