#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

GIT_CMD=(git --git-dir=git-data/.git --work-tree=.)
REMOTE_URL="https://github.com/georgezhong10-cmyk/georgezhong10-cmyk.github.io.git"

if ! "${GIT_CMD[@]}" remote get-url origin >/dev/null 2>&1; then
  "${GIT_CMD[@]}" remote add origin "$REMOTE_URL"
fi

"${GIT_CMD[@]}" status --short
"${GIT_CMD[@]}" push -u origin main

cat <<'MSG'

推送完成后，请到 GitHub 仓库：
https://github.com/georgezhong10-cmyk/georgezhong10-cmyk.github.io

然后打开 Settings -> Pages：
1. Source 选择 Deploy from a branch
2. Branch 选择 main
3. Folder 选择 /root
4. Save

几分钟后访问：
https://georgezhong10-cmyk.github.io/
MSG
