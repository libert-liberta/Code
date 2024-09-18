#!/bin/bash
# Windowsで実行する場合はGit Bashに関連付けをするか、Git Bashで直接実行してください
extensions=()

# 以下のディレクトリの.sourceファイルに拡張機能の一覧がまとめてある
# インストールしたいカテゴリの拡張機能の行をコメントアウトして実行
readonly EXTENSION_SOURCE_PATH="list_source"
source $EXTENSION_SOURCE_PATH/_main_extension.source
source $EXTENSION_SOURCE_PATH/cpp_extensions.source
source $EXTENSION_SOURCE_PATH/golang_extensions.source
source $EXTENSION_SOURCE_PATH/java_extensions.source
source $EXTENSION_SOURCE_PATH/laravel_extensions.source
source $EXTENSION_SOURCE_PATH/minecraft_extensions.source
source $EXTENSION_SOURCE_PATH/mysql_extensions.source
source $EXTENSION_SOURCE_PATH/php_extensions.source
source $EXTENSION_SOURCE_PATH/python_extensions.source
source $EXTENSION_SOURCE_PATH/rust_extensions.source
source $EXTENSION_SOURCE_PATH/sqlite_extensions.source

args=$1
argDefaults="--install-extension"
args=${args:-$argDefaults}
for extension in ${extensions[@]}
do
	code $args $extension
done