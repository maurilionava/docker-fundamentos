# Docker – Base de Conhecimento

Este repositório tem como objetivo reunir **conceitos fundamentais, anotações, exemplos e comandos práticos** sobre Docker.  
A ideia é servir como material de estudo contínuo, funcionando como uma referência rápida para revisão ou consulta.

---

## 📌 Introdução

O **Docker** é uma plataforma que permite **empacotar, distribuir e executar aplicações em contêineres**, garantindo isolamento, padronização e portabilidade.  
Ele resolve problemas comuns de ambientes de desenvolvimento e produção, como:

- **“Funciona na minha máquina, mas não no servidor.”**
- **Complexidade de dependências e configurações.**
- **Custo de manter múltiplos ambientes.**

Com o Docker, criamos ambientes consistentes, versionáveis e fáceis de compartilhar.

---

## 🔑 Conceitos Fundamentais

- **Virtualização:** Utilização de *hypervisors* para criar máquinas virtuais completas, cada uma com seu sistema operacional.  
- **Contêineres:** Empacotamento de aplicações e dependências que rodam diretamente sobre o *kernel* do sistema host. São mais leves que VMs.  
- **Docker:** Tecnologia que implementa contêineres de forma prática e acessível.  
- **Imagem:** Representação estática de uma aplicação (código + dependências). Ao ser executada, torna-se um contêiner ativo.  
- **Rede:** Docker cria redes virtuais que permitem a comunicação entre contêineres de forma isolada.  
- **Volume:** Diretórios persistentes que permitem salvar dados mesmo que o contêiner seja removido.  
- **Docker Compose:** Ferramenta para definir e gerenciar múltiplos contêineres, redes e volumes via arquivos YAML.

---

## 🚀 Benefícios do Docker

- **Reprodutibilidade:** O ambiente é o mesmo para todos que utilizam a mesma imagem.  
- **Isolamento:** Contêineres não interferem entre si.  
- **Portabilidade:** Rode em qualquer ambiente que tenha Docker instalado.  
- **Escalabilidade:** Facilita a orquestração e integração contínua.  
- **Ecosistema:** Repositórios de imagens públicos e privados (Docker Hub, GitHub Container Registry, etc.).

---

## 🛠️ Principais Comandos do Docker

| Comando | Descrição |
|---------|-----------|
| `docker --version` | Verifica a versão instalada do Docker. |
| `docker pull <imagem>` | Baixa uma imagem do Docker Hub. |
| `docker images` | Lista todas as imagens baixadas. |
| `docker rmi <imagem>` | Remove uma imagem local. |
| `docker run <imagem>` | Cria e executa um contêiner baseado em uma imagem. |
| `docker ps` | Lista os contêineres em execução. |
| `docker ps -a` | Lista todos os contêineres (inclusive parados). |
| `docker stop <id>` | Para um contêiner em execução. |
| `docker start <id>` | Inicia um contêiner parado. |
| `docker rm <id>` | Remove um contêiner. |
| `docker exec -it <id> bash` | Acessa o terminal de um contêiner em execução. |
| `docker logs <id>` | Mostra os logs de um contêiner. |
| `docker network ls` | Lista as redes criadas no Docker. |
| `docker volume ls` | Lista volumes disponíveis. |

---

## 📦 Docker Compose – Comandos Essenciais

| Comando | Descrição |
|---------|-----------|
| `docker compose up -d` | Sobe os serviços definidos no arquivo `docker-compose.yml` em segundo plano. |
| `docker compose down` | Para e remove todos os serviços definidos no Compose. |
| `docker compose ps` | Lista os serviços gerenciados pelo Compose. |
| `docker compose logs -f` | Exibe logs em tempo real dos serviços. |
| `docker compose restart <serviço>` | Reinicia um serviço específico. |

---

## 🔍 Próximos Passos de Estudo

- Estudar **comandos avançados** do Docker (build, tag, push, prune, inspect).  
- Entender **estruturas de rede** personalizadas (bridge, host, overlay).  
- Explorar **volumes e persistência de dados**.  
- Criar e gerenciar **imagens personalizadas** com `Dockerfile`.  
- Aprender sobre **boas práticas de segurança e otimização** em imagens.  
- Estudar orquestração com **Docker Swarm** e **Kubernetes**.  
