#!make
include .env
export

fmt:
	terraform fmt --recursive

init:
	terraform init -reconfigure -reconfigure

validate:
	terraform validate

plan:
	terraform plan -out terraform.tfplan

apply:
	terraform apply

destroy:
	terraform destroy

.PHONY: fmt init validate plan apply destroy
