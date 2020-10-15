FROM amazonlinux:latest
LABEL maintainer="Giovani Balarini"
LABEL github="https://github.com/giovanibalarini/awseks"

WORKDIR /root/
RUN yum install tar gzip awscli vim -y
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
RUN curl  --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp 
RUN mv /tmp/eksctl /usr/bin/eksctl && mv kubectl /usr/bin/kubectl
RUN chmod a+x /usr/bin/kubectl && chmod a+x /usr/bin/kubectl
ENV AWS_PROFILE=default

CMD bash