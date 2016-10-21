FROM ubuntu:latest
MAINTAINER Jacqueline <jacqueline@moonstreet.nl>

# chefdk
RUN apt-get update
RUN apt-get install curl git wget vim tig ssh-client -y
RUN curl https://omnitruck.chef.io/install.sh | bash -s -- -c current -P chefdk

# cleanup
RUN apt-get clean

# presets
ADD vimrc /root/.vimrc
VOLUME ["/data"]
CMD ["bash"]
