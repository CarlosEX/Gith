#!/bin/bash

#--------------------------[ cabeçalho ]---------------------------
# author: Carlos Antonio
# version: 1.0.0
# license: MIT          
# describe: aplictivo para padronização de commits
#-----------------------------------------------------------------

#---------------------------[ resources ]--------------------------
# arquivos de recursos referenciando outros arquivos de funcoes do sitema

#---------------------------[ variáveis cor ]--------------------------

# ANSI Colors (FG & BG)
END="\033[0m"                                                          BLACK="\033[0;30m"                                                     BLACKB="\033[1;30m"                                                    WHITE="\033[3m;0;37m"
WHITEB="\033[1;37m"                                                    RED="\033[0;31m"                                                       REDB="\033[1;31m"                                                      GREEN="\033[0;32m"                                                     GREENB="\033[1;32m"                                                    YELLOW="\033[0;33m"                                                    YELLOWB="\033[1;33m"                                                   BLUE="\033[0;34m"                                                      BLUEB="\033[1;34m"                                                     PURPLE="\033[0;35m"                                                    PURPLEB="\033[1;35m"                                                   LIGHTBLUE="\033[0;36m"                                                 LIGHTBLUEB="\033[1;36m"-

# variáveis de origen do arquivo: ../symbol_unicode_functions.sh
# recebem os valores das funções de simbols                        
                                                                  
#-------------------------------[ funções ]----------------------------

# imprime mensagem de commite cancelado no console.

#function redBold(){
#  printf "${RED_BOLD}$@${NC}\n"
#}


# ANSI Colors (FG & BG)

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
