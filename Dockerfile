FROM bitnami/minideb:stretch

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

WORKDIR /root

ADD https://golang.org/dl/go1.16.4.linux-amd64.tar.gz /tmp/
ADD https://zenodo.org/record/4984669/files/orog.nc.gz /tmp/
ADD *.sh /root/
RUN bash build.sh
CMD bash run.sh

