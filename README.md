[![N|Solid](https://railsadventures.files.wordpress.com/2018/12/aws_eks_logo.png)](https://aws.amazon.com/pt/eks/)

Imagem com awscli, kubectl e ekscli instaladas e prontas para uso.

  - AWSCLI
  - EKSCTL
  - KUBECTL

# O que tem de bom aqui?
Simplesmente ter as três ferramentas juntas em um unico lugar já pensado por mim para facilitar a sua vida.

# Como usar?
Um exemplo bem simples de uso dele é:

```docker container run --rm -ti -v ~/.aws:/root/.aws -e AWS_PROFILE=<seu profile> --name awseks govdlx/awseks```

# Como sei que esta imagem está atualizada ou não?
Um container executara a atualização automatica semanalmente essa imagem, então fique tranquilo.


