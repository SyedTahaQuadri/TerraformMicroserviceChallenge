#!/bin/bash
set -e

exec > /var/log/app-setup.log 2>&1

apt-get update -y
apt-get install -y docker.io awscli

systemctl start docker
systemctl enable docker

aws ecr get-login-password --region ${aws_region} | docker login --username AWS --password-stdin ${ecr_registry}

docker pull ${ecr_image_url}

docker run -d \
  --name static-web \
  --restart always \
  -p 80:80 \
  ${ecr_image_url}