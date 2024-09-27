#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RESET='\033[0m'

CURR_DATE=$(date +"%Y%m%d")

cd $JEUS_HOME/bin

echo "-----------------------------------------------------------------------"
echo "                               JEUS Info                               "
echo "-----------------------------------------------------------------------"
echo "  Current Date        | $CURR_DATE"
echo "  Home Directory      | $JEUS_HOME"
echo "  Current Host        | $JEUS_HOST"
echo "  DAS PORT            | $JEUS_PORT"
echo "  URL                 | http://$JEUS_HOST:$JEUS_PORT/webadmin"
echo "-----------------------------------------------------------------------"

# DAS Start
startDAS() {
	echo -e "${BLUE}---------- Start Domain Admin Server ----------${RESET}"
	if ! pgrep -af jeus | grep java | grep -v grep > /dev/null; then
		nohup startDomainAdminServer -domain $JEUS_DOMAIN -u $JEUS_USERNAME -p $JEUS_PASSWORD > $JEUS_HOME/logs/das/das_$CURR_DATE.log 2>&1 &
		echo -e "${YELLOW}Log path > $JEUS_HOME/logs/das/das_$CURR_DATE${RESET}"
	else
		echo -e "${RED}DAS is already running.${RESET}"
	fi
}

# DAS Stop
stopDAS() {
	echo -e "${RED}---------- Stop Domain Admin Server ----------${RESET}"
	if pgrep -af jeus | grep java | grep -v grep > /dev/null; then
		jeusadmin -host $JEUS_HOST:$JEUS_PORT -domain $JEUS_DOMAIN -u $JEUS_USERNAME -p $JEUS_PASSWORD "local-shutdown"
	else
		echo -e "${RED}DAS has already been terminated.${RESET}"
	fi
}

# NodeManager Start
startNM() {
	echo -e "${BLUE}---------- Start NodeManager  ----------${RESET}"
	if ! pgrep -af nodemanager | grep java | grep -v grep > /dev/null; then
		nohup startNodeManager > $JEUS_HOME/logs/nodemanager/nodemanager_$CURR_DATE.log 2>&1 &
		echo -e "${YELLOW}Log path > $JEUS_HOME/logs/nodemanager/nodemanager_$CURR_DATE${RESET}"
	else
		echo -e "${RED}Nodemanager is already running.${RESET}"
	fi
}

# NodeManager Stop
stopNM() {
	echo -e "${RED}---------- Stop NodeManager ----------${RESET}"
	if pgrep -af nodemanager | grep java | grep -v grep > /dev/null; then
		stopNodeManager -host localhost -port 7730
		#echo -e "${GREEN}Successfully terminated Nodemanager !!!${RESET}"
	else
		echo -e "${RED}Nodemanager has already been terminated.${RESET}"
	fi

}

stopProcess() {
	if [ "$1" = "das" ]; then
		stopDAS
	elif [ "$1" = "nm" ]; then
		stopNM
	else
		stopDAS
		stopNM
	fi
}

startProcess() {
	if [ "$1" = "das" ]; then
                startDAS
        elif [ "$1" = "nm" ]; then
                startNM
        else
		startDAS
		startNM
        fi
}

# Arguments
# $1: das or nm
getProcessStatus() {
	PROCESS=()
	if [ "$1" = "das" ]; then
		PROCESS+=("jeus")
	elif [ "$1" = "nm" ]; then
		PROCESS+=("nodemanager")
	elif [ "$1" = "help" ]; then
		echo "das: Check the current execution status of DomainAdminServer"
		echo "nm : Check the current execution status of Nodemanager"
		echo "[null]: Check the current execution status of All"
	else
		PROCESS+=("jeus")
		PROCESS+=("nodemanager")
	fi

	for element in "${PROCESS[@]}"; do
		#if pgrep -af $element | grep java | grep -v grep > /dev/null; then
		if ps -ef | grep $element | grep java | grep -v grep > /dev/null; then	
			echo -e "${GREEN}$element is running.${RESET}"
		else
			echo -e "${RED}$element is terminated.${RESET}"
		fi
	done
}


if [ -z "$@" ]; then
	getProcessStatus
	startProcess
else
	if [ "$1" = "status" ]; then
		getProcessStatus $2
	elif [ "$1" = "stop" ]; then
		stopProcess $2
	elif [ "$1" = "start" ]; then
		startProcess $2
	fi
fi
