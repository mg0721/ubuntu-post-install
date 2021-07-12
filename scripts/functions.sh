function replace_string {
    local fpath=$1
    local old=$2
    local new=$3

    sudo sed -i "s/$old/$new/g" $fpath
}

function ask_yesno {
    # Ask yes or no. First Param: Question, 2nd param: Default
    # Returns True for yes, False for No
    case $2 in
        [Yy]* ) opts="[YES/no]" ;;
        [Nn]* ) opts="[yes/NO]" ;;
    esac
    while true; do
        read -rp $'\e[36m'"$1 $opts: "$'\e[97m' yn
        yn="${yn:-${2}}"
        case $yn in
            [Yy]* ) retval=true ; break ;;
            [Nn]* ) retval=false ; break ;;
            * ) echo "Please answer yes or no." ;;
        esac
    done
    echo $retval
}

FG_GREEN='\033[0;32m'
FG_YELLOW='\033[1;33m'
FG_BLACK='\033[30m'
BG_RED='\033[41m'
BG_GREEN='\033[42m'
NC='\033[0m'

function run {
    $@
    result=$?
    echo -ne ${FG_YELLOW} "Command: $@, "${NC}
    if [ $result -eq 0 ]; then
        echo -e ${FG_YELLOW}"OK"${NC}
    else
        echo -e ${BG_RED}${FG_BLACK}"FAIL"${NC}
        exit
    fi
}