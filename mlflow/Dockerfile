FROM python:3

RUN pip3 install -U pip \
    && pip3 install mlflow \
    && rm -rf ~/.cache/pip

EXPOSE 5000

ENTRYPOINT ["mlflow"]
CMD ["server", "--host", "0.0.0.0"]

