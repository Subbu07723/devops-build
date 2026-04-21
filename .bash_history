git clone https://github.com/sriram-R-krishnan/devops-build
cd devops-build/devops-app
ls
nano package.json
nano Dockerfile
nano docker-compose.yml
docker-compose up --build -d
# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
docker-compose up --build -d
sudo apt install docker-compose
docker-compose up --build -d
docker ps
sudo docker ps
sudo docker-compose up -d
clear
sudo apt update -y
sudo apt upgrade -y
sudo apt install git -y
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install nodejs -y
node -v
npm -v
git clone https://github.com/sriram-R-krishnan/devops-build.git
cd devops-build
npm install
cd ~/devops-build
ls
cd ~
rm -rf devops-build
git clone https://github.com/sriram-R-krishnan/devops-build.git
cd devops-build
cat package.json
npm install
pwd
cd ~/devops-build
ls -l package.json
exit
git clone https://github.com/sriram-R-krishnan/devops-build.git
cd devops-build
npm install
npm start
npm install 
cat package.json
ls -la
nano Dockerfile
docker build -t devops-app .
sudo docker build -t devops-app .
sudo usermod -aG docker ubuntu
newgrp docker
docker ps
groups
sudo usermod -aG docker $USER
getent group docker
sudo groupadd docker
sudo usermod -aG docker $USER
sudo reboot
npm install
npm run
rm package.json
ls
cd ~/devops-build
ls
docker build -t devops-app .
docker run -d -p 80:80 devops-app
docker ps
nano Dockerfile
nano docker-compose.yml
docker-compose up -d --build
docker ps
docker stop e19e82064f5e
docker rm e19e82064f5e
docker-compose up -d --build
docker-compose down
docker system prune -a
docker-compose up -d --build
docker ps
docker logs devops-container
docker restart devops-container
clear
docker-compose up -d --build
docker-compose down
docker rm -f devops-container
docker rmi devops-app
docker-compose up -d --build
docker ps
nano build.sh
nano deploy.sh
chmod +x build.sh
chmod +x deploy.sh
./build.sh
./deploy.sh
COPY package*.json ./
RUN npm install
nano Dockerfile
docker-compose down
docker-compose up -d --build
nano Dockerfile
ls
./build.sh
./deploy.sh
ls
npm install
npm run build
nano build.sh
cd devops-build
./build.sh
nano build.sh
chmod +x build.sh
./build.sh
nano deploy.sh
chmod +x deploy.sh
./deploy.sh
chmod +x deploy.sh
./deploy.sh
nano deploy.sh
chmod +x deploy.sh
./deploy.sh
clear
chmod +x build.sh
./ build.sh
./buils.sh
clear
./build.sh
./deploy.sh
docker ps
clear
git init
clear
git init
nano .gitignore
nano .dockerignore
clear
cd ~/devops-build
nano .gitignore
nano .dockerignore
git add .
git commit -m "added ignore files"
git push origin dev
git checkout -b dev
git push -u origin dev
git remote remove origin
git remote add origin https://github.com/Subbu07723/devops-build.git
git push -u origin dev
clear
git remote add origin https://github.com/Subbu07723/devops-build.git
git push -u origin dev
git remote remove origin
git remote add origin https://github.com/Subbu07723/devops-build.git
git push -u origin dev
git push -u origin
clear
cd devops-build
git remote add origin https://github.com/Subbu07723/devops-build.git
git push -u origin dev
git remote remove origin
git remote add origin https://github.com/Subbu07723/devops-build.git
git push -u origin dev
git add .
git commit -m "test update"
git push origin dev
nano README.md
git add .
git commit -m "updated for screenshot"
git push -u origin dev
docker login
devops-app
docker images
docker tag devops-app subbulakshmisenthilmurugan/prod-repo:latest
clear
cd devops-app
clear
ls -l
cd devops-build
ls
docker build -t dev-repo .
docker images
docker login
docker push subbulakshmisenthilmurugan/dev-repo:latest
sudo apt update
sudo apt install fontconfig openjdk-21-jre
java -version
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]"   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
