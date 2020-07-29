# Pull a light weight linux image
FROM debian:buster-slim

# Update package manager and install nginx
RUN apt-get update
RUN apt-get install -y nginx
# Linking the logfile to the stdout
RUN rm /var/log/nginx/access.log && ln -s /dev/stdout /var/log/nginx/access.log

# Startup the server 
# In this method the command is executed by the shell so the shell 
# becomes the PID 1 CMD nginx -g 'daemon off;' this is called the shell form
# The following is the exec form
CMD ["nginx","-g","daemon off;"]

