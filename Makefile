# -*- coding: utf-8 -*-

TIMESTAMP := $(shell date +%Y%m%d%H%M%S)
MAKEFILE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

CMD_DOCKER := docker
CMD_DOCKER_COMPOSE := docker compose

MAIN_CONTAINER_APP := app
MAIN_CONTAINER_SHELL := bash
PREVIEW_URL := http://0.0.0.0:8000/

.DEFAULT_GOAL := default
.PHONY: default setup ps build up renew shell logs follow open hide reveal start format lint test doc deploy stop down clean prune help

default: start # 常用
	@say "The application has been started."
	make open
	make follow

setup: reveal up ; ## 初回
	echo "TODO: Not Implemented Yet!"

ps: ## 状況
	$(CMD_DOCKER_COMPOSE) ps --all

build: ## 構築
	$(CMD_DOCKER_COMPOSE) build

up: build ## 起動
	$(CMD_DOCKER_COMPOSE) up --detach --remove-orphans

renew: down clean build ; ## 転生
	$(CMD_DOCKER_COMPOSE) up --detach --remove-orphans --force-recreate

shell: up ## 接続
	$(CMD_DOCKER_COMPOSE) exec $(MAIN_CONTAINER_APP) $(MAIN_CONTAINER_SHELL)

logs: ## 記録
	$(CMD_DOCKER_COMPOSE) logs --timestamps

follow: ## 追跡
	$(CMD_DOCKER_COMPOSE) logs --timestamps --follow

open: ## 閲覧
	open ${PREVIEW_URL}

hide: ## 秘匿
	git secret hide -v

reveal: ## 暴露
	git secret reveal -vf

start: up ## 開始
	$(CMD_DOCKER_COMPOSE) exec $(MAIN_CONTAINER_APP) pipenv run start

format: ##
	$(CMD_DOCKER_COMPOSE) run $(MAIN_CONTAINER_APP) pipenv run format

lint: format ## 検証
	$(CMD_DOCKER_COMPOSE) run $(MAIN_CONTAINER_APP) pipenv run lint

test: ## 試験
	$(CMD_DOCKER_COMPOSE) run $(MAIN_CONTAINER_APP) pipenv run test

doc: format ## 文書
	$(CMD_DOCKER_COMPOSE) run $(MAIN_CONTAINER_APP) pipenv run doc

deploy: ## 配備
	echo "TODO: Not Implemented Yet!"

stop: ## 停止
	$(CMD_DOCKER_COMPOSE) stop

down: ## 削除
	$(CMD_DOCKER_COMPOSE) down --rmi all --remove-orphans

clean: down ## 掃除
	rm -rf log/*

prune: ## 破滅
	$(CMD_DOCKER) system prune --all --force --volumes

help: ## 助言
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
