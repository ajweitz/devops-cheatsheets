# docker build
docker build . # build the Dockerfile inside current directory

# docker ps
docker ps # will list IDs of containers

# docker exec
docker exec -it <mycontainerId> bash # attaching to a container

# docker run
docker run -t -i <image_name> bash # run interactive container