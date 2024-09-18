#!/bin/bash
# Windowsで実行する場合はGit Bashに関連付けをするか、Git Bashで直接実行してください
readonly FILE_NAME="install_extensions.sh"
echo "#!/bin/bash" > $FILE_NAME
echo "# Windowsで実行する場合はGit Bashに関連付けをするか、Git Bashで直接実行してください" >> $FILE_NAME
code --list-extensions | xargs -L 1 echo code --install-extension >> $FILE_NAME
