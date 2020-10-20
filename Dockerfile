FROM amazonlinux:latest
LABEL maintainer="Giovani Balarini"
LABEL github="https://github.com/giovanibalarini/awseks"

WORKDIR /root/

ENV VERIFY_CHECKSUM=false
ENV AWS_PROFILE=default
RUN yum install tar gzip awscli vim -y
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
RUN curl  --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp 
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash -
RUN curl -L https://git.io/getLatestIstio | sh -
RUN mv /tmp/eksctl /usr/bin/eksctl && mv kubectl /usr/bin/kubectl
RUN chmod a+x /usr/bin/kubectl && chmod a+x /usr/bin/kubectl
ENV PATH="$PATH:/root/istio-1.7.3/bin"

CMD bash