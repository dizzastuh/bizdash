default: help

VAR_FILES =	-var-file="$(ENV).tfvars"


.PHONY: init
init:
	terraform init \
		-backend-config="bucket=$(TF_VAR_project)-tfstate-$(ENV)" \
		-backend-config="region=$(TF_VAR_region)" \
		-backend-config="prefix=network"


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
