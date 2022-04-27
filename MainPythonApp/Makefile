$(info $(SHELL))

hello:
	echo "Welcome to the make my cool make file."

run:
	python main.py

docker:
	export DOCKER_USER=$(username)
	export DOCKER_PASSWORD=$(password)
	bash DockerPublish.sh $(image-name)
