BUILD_ID := $(shell git rev-parse --short HEAD 2>/dev/null || echo no-commit-id)

.EXPORT_ALL_VARIABLES:

.PHONY: help terraform terraform-docs vagrant start start_k8s

.DEFAULT_GOAL := help

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

###########
# Vagrant #
###########
vagrant-setup: ## Prepare vagrant setup
	@vagrant plugin update
	@vagrant plugin list

#################
# Vagrant Boxes #
#################
box-up: ## Start Box with Docker (Vagrant)
	@echo "Create Box with Vagrant"
	@vagrant up

box-stop: ## Stop Box with Docker (Vagrant)
	@echo "Stop cluster with vagrant"
	@vagrant halt
	#susptend

box-destroy: ## Destroy Box with Docker (Vagrant)
	@echo "Destroy cluster with vagrant ${VAGRANT_CWD}"
	@vagrant destroy --force --parallel

box-provision: ## Provision boxes
	@echo "Provision boxes"
	@vagrant provision

box-ssh: ## SSH to Vagrant box. BOX_NAME=docker make box-ssh
	@echo "SSH onto ${BOX_NAME}"
	@vagrant status
	@vagrant ssh ${BOX_NAME}

box-cache: ## Remove Vagrant cache
	@echo "Clean Vagrant cache"
	@rm -rf $HOME/.vagrant.d/cache/
	@rm -rf .vagrant/machines/
