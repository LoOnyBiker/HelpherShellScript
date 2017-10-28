function progressBar() {
    echo -ne '#####                     (33%)\r'
    sleep 1
    echo -ne '#############             (66%)\r'
    sleep 1
    echo -ne '#######################   (100%)\r'
    echo -ne '\n'
}


function spinChar() {
    chars="/-\|"

    while :; do
      for (( i=0; i<${#chars}; i++ )); do
        sleep 0.5
        echo -en "${chars:$i:1}" "\r"
      done
    done
}

# # count=$(grep -E '##' E:/PortableGit/mingw64/bin/src/funcSRC.sh | wc -l)
# # desc=$(grep -E '##' E:/PortableGit/mingw64/bin/src/funcSRC.sh)
# # names=$(grep -E '\b.*[a-z_A-Z]\b\(' E:/PortableGit/mingw64/bin/src/funcSRC.sh)

# # # for i in ${names}; do
# #     for i in $names; do
# #         for j in $desc; do
# #             if [[ $i!="function" ]]; then
# #                 echo "$i - "$j
# #             fi
# #         done
# #     done
# # # done


##
function check() {
    if  foobar_loc="$(type "jobCmdss")" && ! [ -z "$foobar_loc" ]; then
    # install foobar here
        echo "$foobar_loc"
    fi
    echo "$foobar_loc"
}
