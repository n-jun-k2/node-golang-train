# node-golang-train

Go言語とVue.jsを利用したWEBプロジェクトのイメージプロジェクト.


## Directorys

```bash
├─.github
├─backend               # Go言語のプロジェクト（Standard Layout Project）
│  ├─bin                # コンテナのダミーマウント
│  ├─cmd
│  ├─configs
│  ├─internal
│  ├─pkg                # コンテナのダミーマウント
│  └─test
├─db                    # DBコンテナの永続化の為のディレクトリ
├─dist                  # Vue.jsのbuild先
│  └─a
├─docker                # docker イメージ
│  ├─golang             # backendのイメージ
│  ├─mysql              # dbのイメージ
│  └─node               # frontendのイメージ
├─frontend              # Node.jsのプロジェクト
│  ├─node_modules       # コンテナのダミーマウント
│  ├─public
│  │  └─static
│  └─src
├─.env
├─.gitignore
├─docker-compose.yaml
├─makefile
└─README.md
```
## .env
``COMPOSE_DOCKER_CLI_BUILD=1``Docker buildkitをdocker-composeで行う為の環境変数.

## How to use...

```bash
# 全てのコンテナを立ち上げる
> make up

# コンテナにログインして開発を行う
> make login service=<container name>
```

## Why ``/dist/a``
Vue.jsがビルドする際にディレクトリ事削除する為/distを指定するとマウント先が削除されようとしてビルドが失敗されます。その為dist配下にaのディレクトリをダミーで配置しています。