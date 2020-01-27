default: help

VAR_FILES = -var-file="$(TF_VAR_env).tfvars"


.PHONY
init:
	terraform init --var-files ${VAR_FILES}

.PHONY
refresh:
	terraform refresh --var-files ${VAR_FILES}

.PHONY
apply:
	terraform apply --var-files ${VAR_FILES}

.PHONY
destroy:
	terraform destroy --var-files ${VAR_FILES}