# https://hub.docker.com/
# echo '' > test.txt

#IMAGES
docker 
    images
    image 
        ls # list
        list
        pull mysql:5.7
        inspect mysql:5.7
        prune

docker build -t custom_image/img:1.0 . # -t: define a propriedade da imagem ao usuário

#VOLUME
docker volume 
    ls
    create --name datadb

#NETWORK
docker network 
    ls
    inspect bridge # bridge(padrão), host, none
    create --driver bridge nome_rede # rede customizada. ao invés de utilizar o ip, utilizar o nome para conexão
    connect 
        nome_da_rede imagem
        redealpila alp1

#CONTAINER
docker container 
    help
    log
    logs container_nome
    ps -a # process status
    start container
    stop container
    exec -it alp1 /bin/sh
    rm 
        -f nome_container # -f: force
        -f $(docker ps -aq)
    run -d #pull, create, start, exec
        alpine comando
        -v volume/local:volume/container
        -p 8000:8080
        -e DBHOST=192.168.0.100 # -e: variável de ambiente
        -it alpine /bin/sh
        --name alp1
        --network redealpine # -network ou -net

#PRACTICE
docker container run hello-world
docker container run -it --name alp1 alpine:latest
docker container exec -it alp1 /bin/sh
docker container run --name nginx -p 8080:80 nginx:latest
docker container run --name nginx -p 8080:80 -v $(pwd)/html:/usr/share/nginx/html -d nginx 
mkdir $(pwd)/html && cd html && code .