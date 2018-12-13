!/bin/bash
RED='\033[1;31m'     # red
GREEN='\033[1;32m'   # green
YELLOW='\033[1;33m'  # yellow
BLUE='\033[1;34m'    # blue
PURPLE='\033[1;35m'  # purple
NC='\033[0m'         # No Color

#-------------------- Function

CF_HOST='YOUR_CF_HOST'

#$1 msg to display
#$2 level OK , WARN, ERROR displayed with color
function msg() {
    if [ "$2" == "OK" ]
    then
        echo -e "$1 ${GREEN}OK${NC}"
    elif [ "$2" == "WARN" ]
    then
        echo -e "$1 ${YELLOW}WARNING${NC}"
    elif [ "$2" == "ERROR" ]
    then
        echo -e "$1 ${RED}ERROR${NC}"
    else
        echo -e "$1"
    fi
}

#$1 msg to display
#$2 exit error code
function exitWithError() {
    echo -e "${RED}$1${NC}"
    #come back initial pwd
    cd "$PWD"
    exit "$2"
}


#-------------------- Main


if [ "$#" -ne 3 ];
then
    msg " Usage: $0 app-name source target"
    msg " app-name = your cf applucation"
    msg " source = folder to copy "
    msg " target = container folder ( Must be /home/vcap/app )"
    exitWithError " Missing Arguments. Process aborted. Bye." 1
else
    msg " Retrieve information ..."
fi

APP_ID=$(cf app $1 --guid)

msg " GET APP-ID $APP_ID"

cf ssh-code | xclip -selection clipboard

msg "  Paste your password is in clipboard Shift + Ctrl + V"

scp -r -P 2222 -o User=cf:$APP_ID/0 $2 $CF_HOST:$3
