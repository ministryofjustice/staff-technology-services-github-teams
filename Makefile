#!make
include .env
export

fmt:
	terraform fmt --recursive

init:
	terraform init -reconfigure -reconfigure

validate:
	terraform validate

workspace:
	terraform workspace select github || terraform workspace new github

plan: workspace
	terraform plan -out terraform.tfplan

apply: workspace
	terraform apply

destroy:
	terraform destroy

.PHONY: fmt init validate plan apply destroy
