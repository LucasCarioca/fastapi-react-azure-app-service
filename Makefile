.PHONY := all

terraform-validate:
	cd terraform; \
	terraform init; \
	terraform fmt; \
	terraform validate; \
	terraform plan

terraform-apply:
	cd terraform; \
	terraform init; \
	terraform apply --auto-approve

terraform-destroy:
	cd terraform; \
	terraform init; \
	terraform destroy --auto-approve

backend-start:
	uvicorn backend.app.main:app --reload --port 8080

ui-build-nonprod:
	cd ui; \
	yarn install; \
	yarn build:nonprod; \

ui-ci:
	cd ui; \
	yarn install; \
	yarn build; \
	yarn test

ui-test-watch:
	cd ui; \
	yarn test:watch 

ui-start:
	cd ui; \
	yarn install; \
	yarn start