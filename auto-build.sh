#!/bin/sh


mvn clean install

docker build -t ${USER} .

#remove old container
docker container rm -f ${USER}-api
sleep 2s
#remove hanging image last built <none>
docker rmi $(sudo docker images -f "dangling=true" -q) --force
sleep 2s

docker run -d --name ${USER}-api -p 8080:8080 ${USER}
#sudo docker run -d --name ${USER}-api -p 8080:8080 -v /home/homestore/images:/images ${USER}

echo "Success..."
