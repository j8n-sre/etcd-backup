FROM k8s.gcr.io/etcd-amd64:3.4.3

RUN apt-get update
RUN apt-get install -y rsync openssh-client

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Seoul
RUN apt-get install -y tzdata
