build:
# oapi-codegenを利用するためのコンテナイメージをビルド
	docker build  ./docker/oapi-codegen/ -t oapi-codegen-cli

generate:
# openapi.yamlからEchoのコードを生成
	sh ./scripts/openapi/generate.sh