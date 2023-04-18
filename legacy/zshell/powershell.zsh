export POWERLEVEL9K_PROMPT_ON_NEWLINE=true
export POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
export POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=">"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs dir_writable)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(anaconda virtualenv time)
export POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
export POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''
export POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

# RIGHT PROMPT
export POWERLEVEL9K_TIME_BACKGROUND="clear"
export POWERLEVEL9K_TIME_FOREGROUND="gold1"
export POWERLEVEL9K_ANACONDA_BACKGROUND="clear"
export POWERLEVEL9K_ANACONDA_FOREGROUND="orange1"
export POWERLEVEL9K_TIME_ICON=""
#POWERLEVEL9K_PYTHON_ICON="\ue73c"
#POWERLEVEL9K_USER_ICON="\uf8d9" # panda
export POWERLEVEL9K_USER_DEFAULT_BACKGROUND='clear'
export POWERLEVEL9K_USER_DEFAULT_FOREGROUND='mediumspringgreen'

# MK : Colors for left prompt should be changed using terminator setting.
# MK : Because we want to use more than 256 xterm colors.
# LEFT PROMPT
# POWERLEVEL9K_OS_ICON_BACKGROUND="slateblue1"
# POWERLEVEL9K_OS_ICON_FOREGROUND="black"
# POWERLEVEL9K_DIR_ETC_BACKGROUND="salmon1"
# POWERLEVEL9K_DIR_ETC_FOREGROUND="black"
# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="salmon1"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="black"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="salmon1"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
# POWERLEVEL9K_DIR_HOME_BACKGROUND="salmon1"
# POWERLEVEL9K_DIR_HOME_FOREGROUND="black"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="salmon1"
# POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='red1'
# POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='clear'

# VCS
export POWERLEVEL9K_VCS_CLEAN_FOREGROUND="black"
export POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="black"
export POWERLEVEL9K_VCS_CLOBBERED_FOREGROUND="black"
export POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="black"
export POWERLEVEL9K_VCS_CLEAN_BACKGROUND="mediumspringgreen"
export POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="indianred1"
export POWERLEVEL9K_VCS_CLOBBERED_BACKGROUND="maroon"
export POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="lightgoldenrod1"


export plugins=(
     git
     python
     virtualenv
     pip
     docker
     sudo
     )

export POWERLEVEL9K_TIME_FORMAT='%D{%H%M%S}'