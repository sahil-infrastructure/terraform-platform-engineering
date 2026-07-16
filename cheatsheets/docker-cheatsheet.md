# 🐳 Docker Project Cheat Sheet

## Purpose in this Project

Docker was used to package the Flask application into a portable container. The image was stored in Docker Hub and later deployed automatically on an AWS EC2 instance through Jenkins and Ansible.

---

## Project Workflow

```text
Flask Application
        │
        ▼
Dockerfile
        │
        ▼
docker build
        │
        ▼
Docker Image
        │
        ▼
docker push
        │
        ▼
Docker Hub
        │
        ▼
Jenkins Pipeline
        │
        ▼
Ansible Playbook
        │
        ▼
docker pull
        │
        ▼
Running Container on AWS EC2
```

---

## Commands Used

| Command | Purpose |
|----------|---------|
| docker build | Build the Docker image |
| docker images | Verify image creation |
| docker run | Run the application locally |
| docker ps | Verify running container |
| docker logs | View application logs |
| docker exec | Access the running container |
| docker push | Upload image to Docker Hub |
| docker pull | Pull image on AWS EC2 |

---

## Achievements

✅ Flask application containerized

✅ Docker image created successfully

✅ Image uploaded to Docker Hub

✅ Docker image deployed automatically on AWS EC2

✅ Docker integrated into the Jenkins CI/CD pipeline
