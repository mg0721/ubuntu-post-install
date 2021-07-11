. functions.sh
. SETTING



function git_setting {
    git config --global user.name $GIT_NAME
    git config --global user.email $GIT_MAIL
    git config --global core.whitespace trailing-space
    #,-space-before-tab,indent-with-non-tab,tab-in-indent,cr-at-eol
    git config --list
}

git_setting

install_docker /etc/apt/sources.list "archive.ubuntu.com" "mirror.kakao.com"
install_docker /etc/apt/sources.list "security.ubuntu.com" "mirror.kakao.com"

sudo apt update
sudo apt upgrade