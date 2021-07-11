. SETTING
. ./scripts/functions.sh
. ./scripts/install_git.sh

git_setting

replace_string /etc/apt/sources.list "archive.ubuntu.com" "mirror.kakao.com"
replace_string /etc/apt/sources.list "security.ubuntu.com" "mirror.kakao.com"

install_apt

sudo apt update
sudo apt upgrade