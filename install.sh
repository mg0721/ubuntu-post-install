. SETTING
. ./scripts/functions.sh
. ./scripts/git.sh

replace_string /etc/apt/sources.list "archive.ubuntu.com" "mirror.kakao.com"
replace_string /etc/apt/sources.list "security.ubuntu.com" "mirror.kakao.com"

sudo apt update
sudo apt upgrade

install_apt
set_git