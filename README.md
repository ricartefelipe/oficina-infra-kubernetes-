# Kubernetes local (Kind) via Terraform

> **Fase 3 (entrega):** cluster **EKS** na AWS — ver [`aws-eks/`](aws-eks/) e [`README-FASE3.md`](README-FASE3.md).

Cumpre o enunciado da Fase 2 (**cluster Kubernetes local ou cloud**) com **Kind** (Kubernetes in Docker), reproduzivel por **Terraform** na maquina do desenvolvedor.

## Requisitos

- [Docker](https://docs.docker.com/get-docker/) em execucao
- [Terraform](https://developer.hashicorp.com/terraform/install) `>= 1.5.0`

## Uso

```bash
terraform init
terraform plan
terraform apply
```

Apos o `apply`, configure o kubectl (exemplo - ajuste ao output real):

```bash
terraform output -raw kubeconfig > "$HOME/.kube/oficina-kind-config"
export KUBECONFIG="$HOME/.kube/oficina-kind-config"
kubectl cluster-info
```

Em seguida aplique os manifestos da aplicacao no repositorio **oficina-app** ou **oficina-springboot-mvp** (pasta `k8s/`). A imagem da app pode ser construida localmente (`docker build`) e carregada no Kind com `kind load docker-image ... --name <nome-do-cluster>`.

## Destruir

```bash
terraform destroy
```

## CI

O workflow [`.github/workflows/terraform-validate.yml`](.github/workflows/terraform-validate.yml) executa `terraform fmt`, `init -backend=false` e `validate` na raiz deste repositorio (sem criar cluster; sem Docker no runner para este passo).
