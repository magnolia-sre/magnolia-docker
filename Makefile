.PHONY: login build push

login:
	echo "$$DOCKER_PASSWORD" | docker login -u "$$DOCKER_USERNAME" --password-stdin ;

build:
	cd $$DIR && ../../readargs.sh args.csv ./build.sh

push: login
	cd $$DIR && ../../readargs.sh args.csv ./push.sh