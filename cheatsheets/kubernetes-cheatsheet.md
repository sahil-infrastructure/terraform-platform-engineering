# ☸️ Kubernetes Project Cheat Sheet

## Purpose in this Project

Kubernetes was used to deploy and manage the Dockerized Flask application. It replaced Docker Compose and provided production-style orchestration for the application.

---

## Project Workflow

```text
Docker Image
      │
      ▼
Deployment
      │
      ▼
ReplicaSet
      │
      ▼
Pods
      │
      ▼
Service
      │
      ▼
Ingress
      │
      ▼
Application
```

---

## Commands Used

| Command | Purpose |
|----------|---------|
| kubectl apply | Deploy Kubernetes resources |
| kubectl get pods | Verify running Pods |
| kubectl get svc | Verify Services |
| kubectl get ingress | Verify Ingress |
| kubectl describe pod | Troubleshoot Pods |
| kubectl logs | View application logs |
| kubectl exec | Access running Pod |
| kubectl rollout status | Verify Deployment |
| kubectl rollout undo | Rollback Deployment |

---

## What We Built

- Kubernetes Deployment
- ReplicaSet
- Pods
- Service
- Ingress
- StatefulSet
- Helm installation

---

## What We Achieved

- Docker application deployed successfully
- Pods running successfully
- Service exposed successfully
- PostgreSQL deployed using StatefulSet
- Helm installed successfully

---

## What Comes Next

- Jenkins automates the deployment
- Terraform provisions AWS infrastructure
- Ansible deploys the application automatically

---

## Project Outcome

- Production-style deployment achieved
- Application managed by Kubernetes
- Ready for CI/CD integration
