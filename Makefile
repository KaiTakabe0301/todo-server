build:
	docker build  ./docker/oapi-codegen/ -t oapi-codegen-cli

generate:
	sh ./scripts/openapi/generate.sh