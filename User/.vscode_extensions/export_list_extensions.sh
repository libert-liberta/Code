#!/bin/bash
# Windowsで実行する場合はGit Bashに関連付けをするか、Git Bashで直接実行してください
readonly FILE_NAME="export_extensions.source"
echo "#!/bin/bash" > $FILE_NAME
echo "# Windowsで実行する場合はGit Bashに関連付けをするか、Git Bashで直接実行してください" >> $FILE_NAME
code --list-extensions | xargs -I extension_name echo "extensions+=("extension_name")" >> $FILE_NAME
