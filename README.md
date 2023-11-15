# Todo Server

このリポジトリは、TODO アプリの Backend を構築するためのリポジトリです。

## 構成

- Golang
- [goose](https://github.com/pressly/goose)
- [GORM](https://gorm.io/ja_JP/docs/index.html)
- postgresql
- OpenAPI
- [oapi-codegen](https://github.com/deepmap/oapi-codegen)

## 使用方法

### 1. Docker コンテナのビルド

ルートディレクトリで以下のコマンドを実行

```bash
$ make build
```

### 2. oapi-codegen によるコードの自動生成

ルートディレクトリで以下のコマンドを実行

```bash
$ make generate
```
