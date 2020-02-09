default: help

VAR_FILES =	-var-file="$(ENV).tfvars" \
			-var-file="../_common_vars/$(PROJECT)-$(ENV).tfvars"


.PHONY: init
init:
	terraform init \
		-backend-config="bucket=$(PROJECT)-tfstate-$(ENV)" \
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
