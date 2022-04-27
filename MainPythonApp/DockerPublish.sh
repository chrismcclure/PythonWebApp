# Must pass this in image-name as the only parameter
IMAGE_NAME=$1
USERNAME=${username}
PASSWORD=${password}

docker login -u $USERNAME -password $PASSWORD
#echo | set /p="$PASSWORD" | docker login --username $USERNAME --password-stdin #couldn't this to work
docker build . -t $IMAGE_NAME

docker image tag $IMAGE_NAME $USERNAME/$IMAGE_NAME:latest
docker image push $USERNAME/$IMAGE_NAME:latest
docker logout
