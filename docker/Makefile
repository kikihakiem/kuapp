PWD:=$(shell cd .. && pwd)
CONTAINER:=$(shell docker ps -a | grep "kuapp:latest" | cut -f 1 -d " ")

default:
	docker build -t kuapp .

app:
	docker run -v $(PWD):/kuapp -it kuapp:latest docker/build.sh

save:
	docker commit $(CONTAINER) kuapp
	docker rm $(CONTAINER)

new:
	docker run --name kuapp -p 3000:3000 -v $(PWD):/kuapp -it kuapp:latest bash # build/dev/start.sh

run:
	docker start -i $(CONTAINER)
