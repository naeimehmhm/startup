#!/bin/bash
sudo apt update
sudo apt-get install debconf openssl vim curl net-tools git     apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl https://owncloud.tapsi.tech/index.php/s/fDXh9mZ44gLOJK5/download
curl https://download.anydesk.com/linux/anydesk_6.1.0-1_amd64.deb?_ga=2.125436553.2083654927.1614374292-1386037832.1614374292
dpkg -i kerio-control-vpnclient-###-linux.deb
curl  https://owncloud.tapsi.tech/index.php/s/vKPA3P7sz2m4uZJ/download --output telegram-setup.2.6.1.tar.xz
tar -xf tsetup.2.6.1.tar.xz
cd Telegram
./Telegram
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(<kubectl.sha256) kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
sudo snap install --classic code # or code-insiders
wget https://downloads.mongodb.com/compass/mongodb-compass_1.25.0_amd64.deb
sudo dpkg -i mongodb-compass_1.25.0_amd64.deb
