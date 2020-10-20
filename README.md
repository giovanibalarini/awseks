[![N|Solid](https://railsadventures.files.wordpress.com/2018/12/aws_eks_logo.png)](https://aws.amazon.com/pt/eks/)

Imagem com awscli, kubectl e ekscli instaladas e prontas para uso.

  - AWSCLI
  - EKSCTL
  - KUBECTL
  - HELM3
  - ISTIOCTL

# O que tem de bom aqui?
Simplesmente ter as três ferramentas juntas em um unico lugar já pensado por mim para facilitar a sua vida.

# Como usar?
Um exemplo bem simples de uso dele é:

```#docker container run --rm -ti -v ~/.aws:/root/.aws -v ~/.ssh/:/root/.ssh/ -e AWS_PROFILE=<seu profile> --name awseks govdlx/awseks```

```#eksctl create cluster --region us-east-2 --name istio-eks01 --nodes 3 --node-type t2.medium --nodegroup-name istio-nodes01 --nodes-min=2 --nodes-max=5 --ssh-public-key "~/.ssh/id_rsa.pub"```

```#istioctl install```

# Como sei que esta imagem está atualizada ou não?
Um container executara a atualização automatica semanalmente essa imagem, então fique tranquilo.


# Agradecimentos

- Primeiramente agradecer aos criadores do Golang que facilitou a vida de todo mundo.  Robert Griesemer, Rob Pike e Ken Thompson
- Segundamente ao Jeferson Fernando que vem mudando a vida de todos os Brasileiros, que trabalham com TI, com sonhos de ser um DevOps. Quer melhorar suas skills? https://github.com/badtuxx https://www.linuxtips.io/ . Feliz em ser amigo desse grande ser Humano.
