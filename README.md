 Docker
Application is containerized using Docker and run using docker-compose.

 Bash Scripts
* build.sh → build Docker image
* deploy.sh → deploy application

DockerHub
* Two repos: dev and prod
* Images pushed based on branch

Jenkins
* CI/CD pipeline setup
* Auto build and deploy using GitHub webhook

 AWS
* Launched EC2 (t2.micro)
* Configured Security Group:
  * Port 80 open for all
  * SSH access restricted to my IP
    
Monitoring
* Setup monitoring to check application health
* Alerts for downtime
