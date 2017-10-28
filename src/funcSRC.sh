# First get the directory of the script itself and then use relative paths
# Source: https://unix.stackexchange.com/questions/216910/bash-command-to-source-a-file-in-a-different-directory
# Deeper: https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR"/../env/settings.sh
source "$DIR"/help.sh


## This func takes all the args and check if there's any similar custom cmds
function checkData() {
    # Source: https://stackoverflow.com/questions/4824590/propagate-all-arguments-in-a-bash-shell-script
    if [[ $dbg == true ]]; then
        echo "[DEBUG] $@"
    fi

    jobCmds "$@"


    # Get info about HelperScript version
    if [[ $1 == "-v" ]]; then
        printf "\033c"
        echo -e "$usage

$line

$(stat "$DIR/../hs.sh")"
    fi
}



## First things first. Check if the prompt line contains any cmd for job
function jobCmds() {
    if [[ $dbg == true ]]; then
        echo "[DEBUG] $@"
    fi

    if [[ $1 == "-s" ]]; then
        echo "Start work now..."
    fi
}
