#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RESET='\033[0m'

COMMAND=$1
shift

SERVERS=("$@")

getHelpMsg() {
	echo "--------------------------------------------------------------------"
        echo -e "${YELLOW}| USAGE${RESET}                                        |"
        echo "--------------------------------------------------------------------"
        echo -e "${YELLOW}|   1st Arguments${RESET}                                                  |"
        echo "|   start   | ManagedServer start <server-list>                    |"
        echo "|   stop    | ManagedServer stop <server-list>                     |"
        echo "|   status  | Select ManagedServer                                 |"
	echo "|   help    | View this Usage                                      |"
	echo "--------------------------------------------------------------------"
        echo -e "${YELLOW}|   In the case of 'stop' or 'start', Enter the 2nd Arguments${RESET}      |"
        echo "|   Please enter the server list separated by sapces.              |"
        echo "--------------------------------------------------------------------"

}

case $COMMAND in
	start|stop)
		if [ "${#SERVERS[@]}" -eq 0 ]; then
			getHelpMsg
		else
			for server in "${SERVERS[@]}"; do
                        	jeusadmin -host $JEUS_HOST:$JEUS_PORT -domain $JEUS_DOMAIN -u $JEUS_USERNAME -p $JEUS_PASSWORD "$COMMAND-server $server"
                	done
		fi
		;;
	status)
		jeusadmin -host $JEUS_HOST:$JEUS_PORT -domain $JEUS_DOMAIN -u $JEUS_USERNAME -p $JEUS_PASSWORD "serverinfo"
		;;
	*)
		getHelpMsg
		;;
esac
