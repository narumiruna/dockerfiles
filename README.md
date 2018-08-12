# dockerfiles

## Note

```
RUN sed -i 's/archive/tw.archive/g' /etc/apt/sources.list
```

```
RUN echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial main restricted universe multiverse' > /etc/apt/sources.list \
    && echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-updates main restricted universe multiverse' >> /etc/apt/sources.list \
    && echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-backports main restricted universe multiverse' >> /etc/apt/sources.list \
    && echo 'deb mirror://mirrors.ubuntu.com/mirrors.txt xenial-security main restricted universe multiverse' >> /etc/apt/sources.list
```
