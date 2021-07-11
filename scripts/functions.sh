function install_docker {
    local fpath=$1
    local old=$2
    local new=$3

    sudo sed -i "s/$old/$new/g" $fpath
}

