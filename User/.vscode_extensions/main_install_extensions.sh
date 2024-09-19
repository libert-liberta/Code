#!/bin/bash
# Windowsで実行する場合はGit Bashに関連付けをするか、Git Bashで直接実行してください
extensions=()

readonly EXTENSION_SOURCE_PATH="list_source"
# 以下のディレクトリの.sourceファイルに拡張機能の一覧がまとめてある
# インストールしたいカテゴリの拡張機能の行をコメントアウトして実行
# ls -1 list_source | xargs -I extension_source echo "extensionsSource+=("extension_source")"
extensionsSource=()
extensionsSource+=(_main_extension.source)
extensionsSource+=(cpp_extensions.source)
extensionsSource+=(golang_extensions.source)
extensionsSource+=(java_extensions.source)
extensionsSource+=(laravel_extensions.source)
extensionsSource+=(minecraft_extensions.source)
extensionsSource+=(mysql_extensions.source)
extensionsSource+=(php_extensions.source)
extensionsSource+=(python_extensions.source)
extensionsSource+=(rust_extensions.source)
extensionsSource+=(shellscript.source)
extensionsSource+=(sqlite_extensions.source)
for extensionSourceFile in "${extensionsSource[@]}";
do
	source $EXTENSION_SOURCE_PATH/$extensionSourceFile
done


# all install
# sourceList=$(find $EXTENSION_SOURCE_PATH -type f)
# for extensionFile in "${sourceList[@]}";
# do
# 	source $extensionFile
# done

args=$1
argDefaults="--install-extension"
args=${args:-$argDefaults}
for extension in ${extensions[@]};
do
	code $args $extension
done