down:
	@terraform destroy --target aws_eks_node_group.this --auto-approve

nuke:
	@terraform destroy -auto-approve
	
up:
	@terraform apply -auto-approve

init:
	@terraform init
	
fmt:
	@terraform fmt