# Wisecow Application

A containerized fortune-telling cow application deployed on Kubernetes.

## Features

- Containerized using Docker
- Deployed on Kubernetes with 3 replicas
- Secure TLS communication via Let's Encrypt
- Automated CI/CD pipeline with GitHub Actions

## Deployment

The application is automatically deployed when changes are pushed to the main branch.

## Access

After deployment, the application will be available at:
`https://wisecow.YOUR_DOMAIN`

## Local Development

To run locally:
```bash
docker build -t wisecow .
docker run -p 4499:4499 wisecow