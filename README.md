# dotfiles

## Install
```
git clone git@github.com:champon1020/dotfiles.git
cd /path/to/dotfiles
bash install.sh
```

## Settings
### Japanese input method for Ubuntu (iBus)
1. Settings -> Region & Language
2. Click "Manage Installed Languages".
3. Click "Install".
4. Select "IBus". (default)
5. Reboot.
6. Settings -> Region & Language
7. Click "+".
8. Select "Japanese (Mozc)"
9. Toggle input method with "Super + Space"

## Requirements
### Install emacs
```
[Ubuntu]
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update
sudo apt install emacs26
```

### Install Go
```
[Ubuntu]
wget https://dl.google.com/go/go<VERSION>.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go<VERSION>.linux-amd64.tar.gz
go version
```

### Install Pyenv
```
[Ubuntu]
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
pyenv -v 
```

### Install Docker
```
[Ubuntu]
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
sudo apt-get update
sudo apt-get install -y docker-ce
docker version
```

### Install Node.js
```
[Ubuntu]
sudo apt install -y nodejs npm
sudo npm install n -g
sudo n stable
sudo apt purge -y nodejs npm
exec $SHELL -l
node -v
```

### Install NVIDIA driver
```
[Ubuntu]
sudo apt install nvidia-driver-<VERSION>
sudo apt install nvidia-cuda-toolkit
sudo reboot
```

### Install neofetch
```
[Ubuntu]
sudo apt install neofetch
```
