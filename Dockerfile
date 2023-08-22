FROM cimg/go:1.19

RUN sudo apt update && \
    sudo apt install -y tmux vim && \
    sudo apt autoremove -y

# Install docker-compose
RUN sudo curl -L "https://github.com/docker/compose/releases/download/v2.2.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose
