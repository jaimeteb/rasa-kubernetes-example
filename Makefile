.PHONY: build, push, deploy

build:
	docker build -t localhost:5555/rasa rasa/
	docker build -t localhost:5555/actions actions/

push:
	docker push localhost:5555/rasa
	docker push localhost:5555/actions

deploy:
	kubectl apply -f deploy/kubernetes/rasa.yml
