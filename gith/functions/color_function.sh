#!/bin/bash


MAGENTA_HEADER='\O33[97;105;5;206;1;5m'
NC='\O33[0m'

#function redBold(){
#  printf "${RED_BOLD}$@${NC}\n"
#}



# Colors
END="\033[0m"
BLACK="\033[0;30m"
BLACKB="\033[1;30m"
WHITE="\033[3m;0;37m"
WHITEB="\033[1;37m"
RED="\033[0;31m"
REDB="\033[1;31m"
GREEN="\033[0;32m"
GREENB="\033[1;32m"
YELLOW="\033[0;33m"
YELLOWB="\033[1;33m"
BLUE="\033[0;34m"
BLUEB="\033[1;34m"
PURPLE="\033[0;35m"
PURPLEB="\033[1;35m"
LIGHTBLUE="\033[0;36m"
LIGHTBLUEB="\033[1;36m"


function upperCase(){
	local __string=${1}
	echo ${__string^^}
}

function lowerCase(){
	local __string=${1}
	echo ${__string~~}
}

function bold(){
    	echo  "\033[1m${1}\033[22m"
}

function dim(){
	echo  "\033[2m${1}\033[22m"
}

function underline(){
	echo  "\033[4m${1}\033[24m"
}

function talic(){
  	echo  "\033[3m${1}\033[23m"
}

function black {
  	echo -e "${BLACK}${1}${END}"
}

function blackb {
  	echo -e "${BLACK}${1}${END}"
}

function white {
  	echo -e "${WHITE}${1}${$END}"
}

function whiteb {
  	echo -e "${WHITEB}${1}${END}"
}

function red {
  	echo -e "${RED}${1}${END}"
}

function redb {
  	echo -e "${REDB}${1}${END}"
}

function green {
  	echo -e "${GREEN}${1}${END}"
}

function greenb {
  	echo -e "${GREENB}${1}${END}"
}

function yellow {
  	echo -e "${YELLOW}${1}${END}"
}

function yellowb {
  	echo -e "${YELLOWB}${1}${END}"
}

function blue {
  	echo -e "${BLUE}${1}${END}"
}

function blueb {
  	echo -e "${BLUEB}${1}${END}"
}

function purple {
  	echo -e "${PURPLE}${1}${END}"
}

function purpleb {
  	echo -e "${PURPLEB}${1}${END}"
}

function lightblue {
  	echo -e "${LIGHTBLUE}${1}${END}"
}

function lightblueb {
  	echo -e "${LIGHTBLUEB}${1}${END}"
}
