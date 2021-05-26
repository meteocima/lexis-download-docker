FROM bitnami/minideb:stretch

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

WORKDIR /root

ADD https://golang.org/dl/go1.16.4.linux-amd64.tar.gz /tmp/
ADD https://zenodo.org/record/4810483/files/orog.nc.gz /tmp/
ADD *.sh .
RUN build.sh
CMD bash run.sh



