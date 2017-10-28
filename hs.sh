#!/bin/sh

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR"/src/funcSRC.sh
source "$DIR"/../env/paths.sh
source "$DIR"/help.sh

# while getopts  :hs:  option; do
#   case "$option" in
#     h) printf "\033c"
#        echo "$usage"
#        exit
#        ;;
#    \?) printf "illegal option: -%s\n" "$OPTARG" >&2
#        echo "$usage" >&2
#        exit 1
#        ;;
#   esac
# done
# shift $((OPTIND - 1))

checkData "$@"
# shutdown
