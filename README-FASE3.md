# Repositorio Kubernetes (Fase 3)

## Entrega principal — EKS na AWS

Terraform em **[`aws-eks/`](aws-eks/)** provisiona:

- Cluster **EKS** `oficina-dev` (`sa-east-1`)
- Repositorio **ECR** `oficina-app`
- Regra de security group RDS ← nodes EKS

Aplicacao e observabilidade: repositorio **oficina-app** — manifests `k8s/aws/` e script `./scripts/fase3/deploy-aws-eks-app.sh`.

| Recurso | Evidencia |
|---------|-----------|
| Cluster | `oficina-dev` |
| API (Load Balancer) | ver `docs/delivery/entrega-portal-fase3.pdf` no **oficina-app** |
| Prometheus + Grafana | namespace `oficina` no EKS |

Convidado de leitura: **soat-architecture**.

## Laboratorio local — Kind

Terraform **Kind** na raiz deste repo (cluster local, custo zero). Porta do gateway no host: **8088**.

Deploy completo local: **oficina-app**, script `./scripts/fase3/deploy-local-kind.sh`.
