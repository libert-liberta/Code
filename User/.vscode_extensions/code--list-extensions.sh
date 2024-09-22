#!/bin/bash
# Windowsで実行する場合はGit Bashに関連付けをするか、Git Bashで直接実行してください
readonly date_time=$(date "+%Y%m%d_%H%M")
readonly FILE_NAME="extensions.source_$date_time.txt"
code --list-extensions | xargs -I extension_name echo "extension_name" > $FILE_NAME

if [ "$#" -ne 0 ]; then
	LIST_NAME=extensions_list.sh
	echo "#!/bin/bash" > $LIST_NAME
	echo "# Windowsで実行する場合はGit Bashに関連付けをするか、Git Bashで直接実行してください" >> $LIST_NAME
	ls -1 list_extensions | xargs -I extension_source echo "extensionsListFiles+=("extension_source")" >> $LIST_NAME
fi