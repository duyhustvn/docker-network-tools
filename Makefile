img=network-tools
img_tag=latest

container_registry = docker.io
user = duyle95

docker-build:
	docker build -t $(img):$(img_tag) .

docker-push:
	docker tag $(img):$(img_tag) $(user)/$(img):$(img_tag)
	docker push $(container_registry)/$(user)/$(img):$(img_tag)

