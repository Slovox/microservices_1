# Membuild Docker Image
PS C:\Users\FRANDA CHRISTIANO\Documents\dicoding_microservices\project-pertama\a433-microservices> docker build -t item-app:v1 .    
[+] Building 47.4s (10/10) FINISHED
 => [internal] load build definition from Dockerfile                              0.0s
 => => transferring dockerfile: 238B                                              0.0s 
 => [internal] load .dockerignore                                                 0.0s 
 => => transferring context: 89B                                                  0.0s 
 => [internal] load metadata for docker.io/library/node:14-alpine                 5.9s 
 => [internal] load build context                                                 0.1s
 => => transferring context: 2.97MB                                               0.1s 
 => [1/5] FROM docker.io/library/node:14-alpine@sha256:434215b487a329c9e867202ff  8.5s
 => => resolve docker.io/library/node:14-alpine@sha256:434215b487a329c9e867202ff  0.0s 
 => => sha256:f56be85fc22e46face30e2c3de3f7fe7c15f8fd7c4e5add29d 3.37MB / 3.37MB  2.7s 
 => => sha256:8f665685b215c7daf9164545f1bbdd74d800af77d0d267db 37.17MB / 37.17MB  7.2s 
 => => sha256:e5fca6c395a62ec277102af9e5283f6edb43b3e4f20f798e3c 2.37MB / 2.37MB  2.0s 
 => => sha256:434215b487a329c9e867202ff89e704d3a75e554822e07f3e0 1.43kB / 1.43kB  0.0s 
 => => sha256:4e84c956cd276af9ed14a8b2939a734364c2b0042485e90e1b 1.16kB / 1.16kB  0.0s 
 => => sha256:0dac3dc27b1ad570e6c3a7f7cd29e88e7130ff0cad31b2ec5a 6.44kB / 6.44kB  0.0s 
 => => sha256:561cb69653d56a9725be56e02128e4e96fb434a8b4b4decf2bdeb4 448B / 448B  2.4s 
 => => extracting sha256:f56be85fc22e46face30e2c3de3f7fe7c15f8fd7c4e5add29d7f64b  0.1s 
 => => extracting sha256:8f665685b215c7daf9164545f1bbdd74d800af77d0d267db31fe034  1.0s 
 => => extracting sha256:e5fca6c395a62ec277102af9e5283f6edb43b3e4f20f798e3ce7e42  0.1s 
 => => extracting sha256:561cb69653d56a9725be56e02128e4e96fb434a8b4b4decf2bdeb47  0.0s 
 => [2/5] RUN mkdir /app                                                          0.5s 
 => [3/5] WORKDIR /app                                                            0.0s 
 => [4/5] COPY . /app                                                             0.0s 
 => [5/5] RUN npm install --production --unsafe-perm && npm run build            31.9s 
 => exporting to image                                                            0.5s 
 => => exporting layers                                                           0.5s 
 => => writing image sha256:89675918cf808d305bd2575d7301e6e60bb583f79b971fcd9461  0.0s 
 => => naming to docker.io/library/item-app:v1                                    0.0s 

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them

# Mengecek apakah image item-app berhasil dibuat
PS C:\Users\FRANDA CHRISTIANO\Documents\dicoding_microservices\project-pertama\a433-microservices> docker images
REPOSITORY            TAG         IMAGE ID       CREATED          SIZE
item-app              v1          89675918cf80   39 seconds ago   156MB
myjenkins-blueocean   2.346.1-1   2c84e09d13e8   7 months ago     780MB
docker                dind        13e76db19a19   7 months ago     325MB
grafana/grafana       latest      3b2b2ecc5e78   7 months ago     317MB
prom/prometheus       latest      932c2dbe7d3e   8 months ago     231MB

# Mengganti nama imaga agar bisa dipush ke Docker Hub
PS C:\Users\FRANDA CHRISTIANO\Documents\dicoding_microservices\project-pertama\a433-microservices> docker tag item-app franda/item-app:1.0

# Mengecek apakah penggantian nama berhasil
PS C:\Users\FRANDA CHRISTIANO\Documents\dicoding_microservices\project-pertama\a433-microservices> docker images
REPOSITORY            TAG         IMAGE ID       CREATED          SIZE
franda/item-app       1.0         89675918cf80   38 minutes ago   156MB
item-app              v1          89675918cf80   38 minutes ago   156MB
myjenkins-blueocean   2.346.1-1   2c84e09d13e8   7 months ago     780MB
docker                dind        13e76db19a19   7 months ago     325MB
grafana/grafana       latest      3b2b2ecc5e78   7 months ago     317MB
prom/prometheus       latest      932c2dbe7d3e   8 months ago     231MB

# Login ke Docker Hub
PS C:\Users\FRANDA CHRISTIANO\Documents\dicoding_microservices\project-pertama\a433-microservices> docker login
Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
Username: franda
Password:
Login Succeeded

Logging in with your password grants your terminal complete access to your account.    
For better security, log in with a limited-privilege personal access token. Learn more at https://docs.docker.com/go/access-tokens/

### Push image ke Docker hub ###

PS C:\Users\FRANDA CHRISTIANO\Documents\dicoding_microservices\project-pertama\a433-microservices> docker push franda/item-app:1.0            
The push refers to repository [docker.io/franda/item-app]
687130af523b: Pushed
470ba81d50c6: Pushed
5f70bf18a086: Pushed
b93781c7c364: Pushed
31f710dc178f: Pushed
a599bf3e59b8: Pushed
e67e8085abae: Pushed
f1417ff83b31: Pushed
1.0: digest: sha256:3b49292f765e7ec14e4ea5d11ed093035961b8dd1d92ef3909a2286141807a15 size: 1994






