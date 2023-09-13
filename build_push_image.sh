#build image
docker build -t item-app:v1 .    

#melihat image
docker images

# Mengganti nama image agar bisa dipush ke Docker Hub
docker tag item-app franda/item-app:1.0

# Login ke Docker Hub
docker login

# Push image ke Docker hub #
docker push franda/item-app:1.0            






