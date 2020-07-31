# How to setup OS161 tool-chain

Making an attempt to try building all the tools required to use OS-161, I found the process
next to impossible and spend almost an entire day. I recommend using a VM here is Dockerfile
that I intend to complete and make a full functioning image of an ubuntu vm that has the 
source and tool-chain required for doing the assignments.

As of now the dockerfile sets up a VM with all the source files with all the tools and the 
path set.

## How to set up

* Have a working docker server running in you system follow the instructions given [here](https://docs.docker.com/get-docker)
* download or copy the Dockerfile to your working directory
* build a docker image using the given docker file using 
```
sudo docker image build -t <image-name> .
```
don't forget to use the `.` it gives the context to the build command.
* Now run a container using the image you built 
```
docker container run --it --name <container-name> <image-name>
```
* As the dockerfile isn't complete yet the build process isn't part of the image yet, you can complete the rest using Jinghao Shi's blog [Pearls in life](http://jhshi.me/2013/12/15/os161-tool-chain-setup/index.html#.XyPJdHUzaV5)
