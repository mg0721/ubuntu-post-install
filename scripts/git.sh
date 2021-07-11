function set_git {
    git config --global user.name $GIT_NAME
    git config --global user.email $GIT_MAIL
    # git config --global core.whitespace trailing-space
    #,-space-before-tab,indent-with-non-tab,tab-in-indent,cr-at-eol
    git config --list
}