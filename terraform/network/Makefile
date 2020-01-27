default: help

VAR_FILES =	-var-file="$(TF_VAR_env).tfvars"


.PHONY: init
init:
	terraform init ${VAR_FILES}


.PHONY: plan
plan:
	terraform plan ${VAR_FILES}


.PHONY: refresh
refresh:
	terraform refresh ${VAR_FILES}


.PHONY: apply
apply:
	terraform apply ${VAR_FILES}


.PHONY: destroy
destroy:
	terraform destroy ${VAR_FILES}
