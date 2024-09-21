#!/bin/bash
# Windowsで実行する場合はGit Bashに関連付けをするか、Git Bashで直接実行してください
readonly date_time=$(date "+%Y%m%d_%H%M")
readonly FILE_NAME="extensions.source_$date_time.txt"
code --list-extensions | xargs -I extension_name echo "extension_name" > $FILE_NAME

