# Docker commands cheat sheet

## docker-machine

* active - active machines
* ls	 - all docker machines on the system
* env	 - set the environment variables like IP
* create - name of machine and driver to be provided
* start  - start the machine
* stop   - stop the machine

## docker container

* run	 - run a container with type specified and command to be done after that -it for interactive --rm can be used to remove container once it is used.
* if you type ^d in a running container shell, it will stop the container and exit
* if you type ^p and then ^q we will detach from the container but the container will still remain running.
* attach - to attach to running containers
* ls	 - to list running containers, a flag to list all including stopped containers
* you can only attach to running containers
* rm 	 - to remove a container using an ID
* log	 - and give container name to view log -f to to follow logs
* You can change the logging location by symlinks

### docker container run options

* --it  	- opens the container in interactive mode
* --rm  	- the container is removed as and when it is killed
* -p		- you can provide a host to container port mapping to publish your service 
* --name 	- provide an explicit name for the container 
* --link	- a deprecated way to make another container's name visible within container
* --volume	- to mount a folder
* --mount 	- is a more implicit mount with many options

__If you have trouble killing a container it's probably because linuxes app armor is stopping
you the quick fix for this remove unknown applications from app armor using sudo aa-remove-unknown__
## docker network 

* create	- create a network with name provided
* rm 		- rm an existing network with name provided
* connect	- connect a container to an existing network
* disconnect	- disconnect a container to an existing network
* ls		- list all active networks
* prune		- remove networks that don't have at least one member
* inspect	- details about a network.

## docker image

* ls		- list images
* rm		- remove existing image
* pull		- pull image from the docker-hub
* build		- build an image from a given Dockerfile use -t to give it a tag and name
* push 		- to push to a docker registry take care of namespace and stay logged in

## docker volume

* ls		- list the volumes 
* inspect	- inspect a given volume
* prune		- delete all unused volumes
* rm 		- remove a volume
