#!/bin/bash
# Windowsで実行する場合はGit Bashに関連付けをするか、Git Bashで直接実行してください

extensionsListFiles=()

if [ "$#" -eq 0 ]; then
	EXTENSION_SOURCE_PATH="list_extensions/"
	# 以下のディレクトリの.sourceファイルに拡張機能の一覧がまとめてある
	# インストールしたいカテゴリの拡張機能の行をコメントアウトして実行
	# ls -1 list_extensions | xargs -I extension_source echo "extensionsListFiles+=("extension_source")"
	source extensions_list.sh
else
	EXTENSION_SOURCE_PATH=""
	extensionsListFiles+=($1)
fi

extensions=()

for extensionSourceFile in "${extensionsListFiles[@]}";
do
	while read LINE
	do
		if [ "$LINE" != "" ] && [ "${LINE:0:1}" != "#" ]; then
			extensions+=($LINE)
		fi
	done < $EXTENSION_SOURCE_PATH$extensionSourceFile
done

for extension in "${extensions[@]}";
do
	code --install-extension $extension
done
