default: help

varFiles =	-var-file="$(TF_VAR_env).tfvars"


.PHONY
init:
	terraform init --var-files

.PHONY
refresh:
	terraform refresh --var-files

.PHONY
apply:
	terraform apply --var-files

.PHONY
destroy:
	terraform destroy --var-files