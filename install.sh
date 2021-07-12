function import_scripts {
    local path=$1
    for SCRIPT in $path/*;
    do
        . $SCRIPT
    done
}

. SETTING
import_scripts ./scripts/

backup /etc/apt/sources.list
replace_string /etc/apt/sources.list "archive.ubuntu.com" "mirror.kakao.com"
replace_string /etc/apt/sources.list "security.ubuntu.com" "mirror.kakao.com"
run sudo apt update
run sudo apt upgrade

install_packages
install_fonts
set_git