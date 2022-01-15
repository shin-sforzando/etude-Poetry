# etude-Poetry

<!-- Badges -->
[![CI](https://github.com/shin-sforzando/etude-Poetry/actions/workflows/ci.yml/badge.svg)](https://github.com/shin-sforzando/etude-Poetry/actions/workflows/ci.yml)
[![Bump Version](https://github.com/shin-sforzando/etude-Poetry/actions/workflows/bump-version.yml/badge.svg)](https://github.com/shin-sforzando/etude-Poetry/actions/workflows/bump-version.yml)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

<!-- Screenshots -->
|![Screenshot 1](https://placehold.jp/32/3d4070/ffffff/720x480.png?text=Screenshot%201)|![Screenshot 2](https://placehold.jp/32/703d40/ffffff/720x480.png?text=Screenshot%202)|
|:---:|:---:|
|Screenshot 1|Screenshot 2|

<!-- Synopsis -->
Etude for [Poetry](https://github.com/python-poetry/poetry).

<!-- TOC -->
- [Prerequisites](#prerequisites)
- [How to](#how-to)
  - [Setup](#setup)
    - [On MacOS](#on-macos)
    - [On Linux](#on-linux)
  - [Develop](#develop)
    - [Start](#start)
    - [Format](#format)
    - [Lint](#lint)
    - [Test](#test)
  - [Document](#document)
  - [Deploy](#deploy)
- [Misc](#misc)
- [Notes](#notes)
  - [LICENSE](#license)
  - [Contributors](#contributors)

## Prerequisites

- [Poetry](https://github.com/python-poetry/poetry)

## How to

```shell
$ make help
setup                初回
ps                   状況
build                構築
up                   起動
renew                転生
shell                接続
logs                 記録
follow               追跡
open                 閲覧
hide                 秘匿
reveal               暴露
start                開始
lint                 検証
test                 試験
doc                  文書
deploy               配備
stop                 停止
down                 削除
clean                掃除
prune                破滅
help                 助言
```

### Setup

#### On MacOS

```shell
brew install poetry
```

#### On Linux

```shell
curl -sSL https://install.python-poetry.org | python3 -
```

### Develop

Commands that are often used during development should be prepared in `default`.

```shell
make
```

#### Start

```shell
make start
```

#### Format

```shell
make format
```

#### Lint

```shell
make lint
```

#### Test

```shell
make test
```

### Document

TODO: Prepare sphinx with pipenv.

```shell
make doc
```

### Deploy

```shell
make deploy
```

## Misc

## Notes

This repository is [Commitizen](https://commitizen.github.io/cz-cli/) friendly.

### LICENSE

See [LICENSE](LICENSE).

### Contributors

- [Shin'ichiro Suzuki](https://github.com/shin-sforzando)
