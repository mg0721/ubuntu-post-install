function replace_string {
    local fpath=$1
    local old=$2
    local new=$3

    sudo sed -i "s/$old/$new/g" $fpath
}

function install_apt {
    LIST='./asset/apt_packages'
    for PACKAGE in $(cat $LIST); do
        sudo apt install $PACKAGE
    done
}