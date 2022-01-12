#!/bin/bash


DELIMITADOR=" ";

splitString() {
  	
	local __temp=""
  	local __string="$1"
	local __demilitador=${1}

    	if [ -n "$__string" ]; then

        	local __part

       		 while read -d "$__delimitador" part; do

            		__temp+=${__part:0:1}

        	done <<< "${__string}"
		
		echo ${__temp^^}
    	fi

}

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

function italic(){
        echo  "\033[3m${1}\033[23m"
}
