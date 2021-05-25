FROM bitnami/minideb:stretch

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update
RUN apt-get install -y libnetcdf-dev git wget build-essential

RUN wget -q https://golang.org/dl/go1.16.4.linux-amd64.tar.gz
RUN mkdir /root/.dewetra2wrf
RUN wget -q https://zenodo.org/record/4607436/files/orog.nc -O /root/.dewetra2wrf/orog.nc

RUN tar -C /usr/local -xzf go1.16.4.linux-amd64.tar.gz
ENV PATH $PATH:/usr/local/go/bin
WORKDIR /root

RUN git clone https://github.com/cima-lexis/lexisdn lexisdn-src

WORKDIR /root/lexisdn-src

RUN go build -o lexisdn ./cli 
RUN mv /root/lexisdn-src/lexisdn /root/lexisdn

WORKDIR /root

ADD run.sh run.sh

CMD bash run.sh



