FROM python:3.6-slim-stretch

# Update system
RUN apt-get -y update

# Install core prerequisites
RUN apt-get -y install \
    git \
    ssh \
    tree \
    vim

# Decalre ENV variables and their defaults
ENV GIT_REPO https://github.com/korczis/chujovinky.git
ENV GIT_REF master
ENV SRC_DIR ./zdrojaky
ENV SSH_KEY_PUB ""
ENV SSH_KEY_PRIV ""

# Create dir for sources
RUN mkdir -p /root/src

# Switch (working dir) to sources
WORKDIR /root

# Copy local sources
COPY . /root/src

# Create .ssh stuff
RUN mkdir -p ~/.ssh
RUN chmod 0700 ~/.ssh

# Prepare priv key
RUN touch ~/.ssh/id_rsa
RUN chmod 0600 ~/.ssh/id_rsa

# Prepare pub key
RUN touch ~/.ssh/id_rsa.pub
RUN chmod 0600 ~/.ssh/id_rsa.pub

RUN tree -a

# Run entrypoint
ENTRYPOINT ["/root/src/run.sh"]
CMD []
