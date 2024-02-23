# kcd-sp-demo 🇧🇷

Demo da apresentação 
"_Nova Era de Políticas no Kubernetes: Explorando Abordagens Nativas de Policy Enforcement_" 
no [KCD São Paulo 2024](https://community.cncf.io/events/details/cncf-kcd-brasil-presents-kcd-brasil-sao-paulo-2024/).

**Slides**: https://docs.google.com/presentation/d/1K0n0TPD-KvPq-87puMRLg-Ap_V-awjU02DgP5odxZNk/edit?usp=sharing 

## Executando os exemplos

### Pré-requisitos
- [Kind](https://kind.sigs.k8s.io/) 
- kubectl

Os comandos usados nesta demos estão no arquivo [Makefile](Makefile) e você pode acessar para mais detalhes.

### Criando um cluster kind

Este comando cria um cluster Kubernetes com Kind na versão 1.29.2 com a _feature gate_ `ValidatingAdmissionPolicy` habilitada.

```shell
make kind-create-cluster
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

Para testar cada política asima, aplique o Deployment e Pod de exemplo com os comandos abaixo:

```shell
# Deployment
make apply-deployment
# Pod
make apply-pod
```

Altere os arquivos [`deployment.yaml`](deployment.yaml) e [`pod.yaml`](pod.yaml) para testar diferentes cenários.
