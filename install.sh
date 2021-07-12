. SETTING

function import_scripts {
    local path=$1
    for SCRIPT in $path/*; do
        . $SCRIPT
    done
}

import_scripts ./scripts/

replace_string /etc/apt/sources.list "archive.ubuntu.com" "mirror.kakao.com"
replace_string /etc/apt/sources.list "security.ubuntu.com" "mirror.kakao.com"

sudo apt update
sudo apt upgrade

install_packages
install_fonts
set_git