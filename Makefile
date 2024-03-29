down:
	@terraform destroy --target aws_eks_node_group.this --auto-approve

nuke:
	@terraform -chdir=modules/helm destroy -auto-approve
	@terraform destroy -auto-approve
	
up:
	@terraform apply -auto-approve

init-helm:
	@terraform -chdir=modules/helm init
	
up-helm:
	@terraform -chdir=modules/helm apply -auto-approve