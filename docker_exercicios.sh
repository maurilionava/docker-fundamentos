#!/bin/bash
# ============================================================
# Arquivo de exercícios práticos de Docker
# Objetivo: consolidar os conceitos aprendidos através de
# comandos executados no shell.
# ============================================================

# ------------------------------------------------------------
# 🐳 1. Primeiros Passos
# ------------------------------------------------------------

# Verificar versão do Docker instalada
docker --version

# Rodar o primeiro container "Hello World"
docker run hello-world


# ------------------------------------------------------------
# 📦 2. Imagens e Containers
# ------------------------------------------------------------

# Baixar uma imagem específica do Docker Hub (exemplo: nginx)
docker pull nginx

# Listar todas as imagens locais
docker images

# Criar e executar um container em segundo plano (-d) com a imagem nginx
docker run -d --name meu_nginx -p 8080:80 nginx

# Listar containers em execução
docker ps

# Listar todos os containers (inclusive parados)
docker ps -a

# Parar um container
docker stop meu_nginx

# Iniciar novamente um container parado
docker start meu_nginx

# Remover um container
docker rm meu_nginx

# Remover uma imagem
docker rmi nginx


# ------------------------------------------------------------
# 🔗 3. Redes no Docker
# ------------------------------------------------------------

# Listar redes disponíveis
docker network ls

# Criar uma rede personalizada
docker network create minha_rede

# Criar dois containers na mesma rede para comunicação entre si
docker run -d --name app1 --network minha_rede nginx
docker run -d --name app2 --network minha_rede alpine sleep 3600

# Testar comunicação (executar ping de dentro do app2 para o app1)
docker exec -it app2 ping app1


# ------------------------------------------------------------
# 💾 4. Volumes e Persistência
# ------------------------------------------------------------

# Listar volumes disponíveis
docker volume ls

# Criar um volume
docker volume create meu_volume

# Rodar um container com volume mapeado
docker run -d --name db_container -v meu_volume:/var/lib/mysql mysql:5.7

# Verificar dados persistindo mesmo após remoção do container
docker rm -f db_container
docker run -d --name db_container2 -v meu_volume:/var/lib/mysql mysql:5.7


# ------------------------------------------------------------
# 📝 5. Dockerfile e Imagens Customizadas
# ------------------------------------------------------------

# Exemplo de criação de Dockerfile
# (criar manualmente o arquivo "Dockerfile" com o conteúdo abaixo):
# ------------------------------------------------------------
# FROM alpine:latest
# RUN apk add --no-cache curl
# CMD ["curl", "--version"]
# ------------------------------------------------------------

# Construir imagem personalizada
# docker build -t minha_imagem_curl .

# Executar container baseado na imagem personalizada
# docker run --rm minha_imagem_curl


# ------------------------------------------------------------
# ⚙️ 6. Docker Compose
# ------------------------------------------------------------

# Criar um arquivo docker-compose.yml com múltiplos serviços:
# ------------------------------------------------------------
# version: "3.9"
# services:
#   web:
#     image: nginx
#     ports:
#       - "8080:80"
#   db:
#     image: mysql:5.7
#     environment:
#       MYSQL_ROOT_PASSWORD: exemplo
# ------------------------------------------------------------

# Subir os serviços definidos no Compose
# docker compose up -d

# Parar e remover os serviços
# docker compose down


# ------------------------------------------------------------
# 🔍 7. Monitoramento e Debug
# ------------------------------------------------------------

# Visualizar logs de um container
docker logs app1

# Acessar o shell interativo de um container
docker exec -it app1 bash

# Inspecionar detalhes de um container
docker inspect app1

# Verificar uso de recursos
docker stats


# ------------------------------------------------------------
# 🚀 8. Conceitos Avançados
# ------------------------------------------------------------

# Criar uma rede overlay (para múltiplos hosts) – requer Swarm
# docker network create -d overlay minha_overlay

# Trabalhar com tags de imagens
docker tag nginx meu_usuario/nginx:1.0

# Enviar imagem para Docker Hub (necessário login)
# docker push meu_usuario/nginx:1.0

# Limpar imagens, containers e volumes não utilizados
docker system prune -a -f
docker volume prune -f
