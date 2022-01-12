#!/bin/env bash

#--------------------------[ cabeçalho ]---------------------------
# author: Carlos Antonio
# version: 1.0.0
# license: MIT
# describe: aplictivo para padronização de commits
#-----------------------------------------------------------------

#-----------------------[ configuração ]---------------------------
# definindo configurações gerais para uso dos scripts e funções

#-----------------------
set -o nounset          # verifica variáveis não declaradas
setterm --reset         # reseta o terminal
#set -o errexit

#----------------------[ variáveis globais ]-----------------------

# variaveis para armazenar as referencias dos arquivos json
_PROJECTS_JSON=~/scripts_shell/gith/data/projects.json
_BOOTCAMPS_JSON=~/scripts_shell/gith/data/bootcamps.json

# --------------------------[ funções ]----------------------------

# função para execução da leitura do json

function substring() {   
	local __string=${1};
	local __lenght=${2};
	echo "${__string:0:$__lenght-1}"
}

function read_jsonfile() {
	
	local __lenght_array; 
	local __items_array;
 	local __result;
	local __file_json=${1};
	local __filter=${2};
	declare -a __result_array;

	__result_array=`cat "$__file_json" | jq -r "$__filter"`
	
	for str in ${__result_array[@]}; do
		__items_array+=$str,
	done
	
	__lenght_array=${#__items_array}
	__result="$(substring "$__items_array" $__lenght_array)";

	echo -e "$__result";
}

function get_projects() {
	echo "$(read_jsonfile "$_PROJECTS_JSON" '.projects[] ')" ;
}
function get_bootcamps() {
	echo "$(read_jsonfile "$_BOOTCAMPS_JSON" '.bootcamps[] ')";
}


#COMMAND=`cat "${fileProject}" | jq -r '.projects[] '`

declare -a arr;

#function json(){
#	echo $COMMAND
#}

#arr="$(json )"

function projects-json(){
	local valores
	local lenght
	for str in ${arr[@]}; do
		valores+=$str, 
	done

	lenght=${#valores}
	substr=${valores:0:$lenght-1}
	echo $substr
}

#printArray

#array=( item1 item2 item3 )
#for index in ${!array[@]}; do
#    echo $index/${#array[@]}
#done


