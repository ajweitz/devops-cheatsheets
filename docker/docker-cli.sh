# docker build
docker build . -t <REPO_NAME>:<IMAGE_LABEL> # build the Dockerfile inside current directory

# docker image
docker image ls # list all images
docker image rm <IMAGE> # remove image

# docker ps
docker ps # will list IDs of containers

# docker exec
docker exec -it <mycontainerId> bash # attaching to a container
docker exec <mycontainerId> <somecommand> # running a command in a container

# docker run
docker run <image> # run container in attached mode (this will block the terminal and show the output from the container)
docker run -d <image> # run container in detached mode
docker run -t -i <image> sh # run container with interactive shell
docker run <image> ping google.com # run container with custom command
docker run -d --name <containerName> <image> # run container and assign it a name (later it will be easier to identify it and remove it)
docker run -p <hostport>:<containerPort> <image> # run container with port mapping
docker run -v <hostpath>:<containerpath> <image> # run container with volume mapping

# docker system
docker system df -v # show size of containers and images

# docker container
docker container top <CONTAINER_ID> # shows the processes that run inside the given container

# docker logs
docker logs <CONTAINER_ID> # show what was written to stdout of a container