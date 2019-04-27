.EXPORT_ALL_VARIABLES:

.DEFAULT_GOAL := help
.PHONY: terraform

help:
	@cat Makefile* | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

kube-up: ## Start Minikube cluster
	@minikube start --vm-driver=virtualbox --kubernetes-version=v1.13.5 \
	--network-plugin=cni \
  --enable-default-cni
	@minikube config set memory 4192
	@minikube config set cpus 2
	@minikube config set heapster false
	@minikube config set ingress true

kube-stop: ## Stop Minikube cluster
	@minikube stop

kube-docker: ## Setup Minikube Docker
	@eval $(minikube docker-env)

infra-prometheus: ## Deploy prometheus infrastucture
	@kubectl apply -f ./infrastructure/prometheus/namespaces.yml
	@kubectl apply -f ./infrastructure/prometheus/prometheus-config-map.yml
	@kubectl apply -f ./infrastructure/prometheus/deployment.yml
	@kubectl apply -f ./infrastructure/prometheus/service.yml
