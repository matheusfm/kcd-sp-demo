# kcd-sp-demo 🇧🇷

Demo da apresentação 
"_Nova Era de Políticas no Kubernetes: Explorando Abordagens Nativas de Policy Enforcement_" 
no [KCD São Paulo 2024](https://community.cncf.io/events/details/cncf-kcd-brasil-presents-kcd-brasil-sao-paulo-2024/).

**Slides**: https://docs.google.com/presentation/d/1K0n0TPD-KvPq-87puMRLg-Ap_V-awjU02DgP5odxZNk/edit?usp=sharing 

## Executando os exemplos

### Pré-requisitos
- [Kind](https://kind.sigs.k8s.io/) (versão mais recente)
- kubectl

Os comandos usados nesta demo estão no arquivo [Makefile](Makefile). Acesse para mais detalhes.

### Criando um cluster kind

Este comando cria um cluster Kubernetes com Kind.

```shell
make kind-create-cluster
```

A API `ValidatingAdmissionPolicy` é estável desde a versão 1.30 do Kubernetes. 
Se você estiver usando [a última versão do Kind](https://github.com/kubernetes-sigs/kind/releases/latest), 
o cluster Kubernetes também será criado na última versão.

Execute o comando abaixo para verificar se a API está disponível:
```shell
make check-api
```

### Aplicando as políticas

Os comandos abaixo aplicam as políticas de exemplo.
Aplique uma por vez.

```shell
# exemplo 1
make example-1
# exemplo 2
make example-2
# exemplo 3
make example-3
```

### Aplicando recursos de amostra

Para testar cada política acima, aplique o Deployment e Pod de exemplo com os comandos abaixo:

```shell
# Deployment
make apply-deployment
# Pod
make apply-pod
```

Altere os arquivos [`deployment.yaml`](deployment.yaml) e [`pod.yaml`](pod.yaml) para testar diferentes cenários.
