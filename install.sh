. ./scripts/functions.sh
. ./scripts/install_git.sh

. SETTING

git_setting

install_docker /etc/apt/sources.list "archive.ubuntu.com" "mirror.kakao.com"
install_docker /etc/apt/sources.list "security.ubuntu.com" "mirror.kakao.com"



LIST='./asset/apt_packages'
for PACKAGE in $(cat $LIST); do
    echo "$PACKAGE"
done


sudo apt update
sudo apt upgrade