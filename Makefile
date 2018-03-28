__PWD=$(shell pwd)

all: help

help: ## ヘルプ表示
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' | sort

clean: ## 初期状態 (remove)
	rm -rf docker

#  # redash 起動
dressup:
	docker-compose -f docker-compose.production.yml up
