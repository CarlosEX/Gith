#!/bin/env bash

#--------------------------[ cabeçalho ]---------------------------
# author: Carlos Antonio
# version: 1.0.0
# license: MIT
# describe: aplictivo para padronização de commits
#-----------------------------------------------------------------


#------------------------[ configuração ]--------------------------
# definindo configurações gerais para uso dos scripts e funções

#-----------------------
TEMP=temp.$$           	# arquivo temporário
set -o nounset 		# verifica variáveis não declaradas
setterm --reset		# reseta o terminal
#set -o errexit		#

#------------------- -[ arquivos de recursos ]---------------------

# referencias de arquivos de scripts com funções de suporte
source ~/scripts_shell/gith/functions/string_function.sh
source ~/scripts_shell/gith/functions/color_function.sh
source ~/scripts_shell/gith/functions/dialog_function.sh
source ~/scripts_shell/gith/functions/symbols_unicode_functions.sh
source ~/scripts_shell/gith/functions/commit_function.sh
source ~/scripts_shell/gith/functions/projects_json.sh

#----------------------[ váriáveis globais ]-----------------------

_GET_PROJECTS=$(get_projects) # obtem valores de retorno da função de leitura do arquivo projext_json.sh que faz a leitura do doc .json de projetos na pasta data
_GET_BOOTCAMPS=$(get_bootcamps);
	
function setEcho(){
	echo -e $@;
}

#---------------------------[ funções ]----------------------------

function get_dialog_project() {
	
	local __projects="$_GET_PROJECTS"
	local __title="PROJETOS"

       	echo -e "$(dialogRadio "$__projects" "$__title" )"
}

function get_dialog_bootcamps(){
	
	local __bootcamps="${_GET_BOOTCAMPS}"
	local __title="BOOTCAMPS"
        
	echo -e "$(dialogRadio "$__bootcamps" "$__title" )"
}

function get_dialog_commit_subject() {
	
	local __subject="Descrição..."
	local __title="COMMIT"
	
	echo -e "$(dialogText "$__subject" "$__title" )"
}

function get_dialog_commit_confirmed() {
	
	local __hint="Confirma o commit?"
	local __title="CONFIRMA COMMIT"
	
	echo -e "$(dialogConfirm "$__hint" "$__title" )"
}

function printCommit(){
	
	local __tipoProjeto=${1};
	local __nomeBootcamp=${2}
	local __mesageCommit=${3};
	
	echo -e \
		"\t`valido` \
		$(purpleb "$__tipoProjeto")\
		$(yellowb ":")\
		$(lightblueb "$__nomeBootcamp")\
		$(yellowb "::")$__mesageCommit\n"

}

function string_isempty() {

	local __default=""

	var=${1-$__default};
	
	if [ "$var" == "" ]
	then	
		echo "Programa encerrado..."
		exit
	fi
}

function githCommit(){
   	
	git_print_commit_started

	# valida 
	local __projeto="$(get_dialog_project)"
	string_isempty $__projeto;

	local __bootcamp="$(get_dialog_bootcamps)"
	string_isempty $__bootcamp;

	local __subject="$(get_dialog_commit_subject)"
	string_isempty $__subject;

	local __confirmed="$(get_dialog_commit_confirmed)"
	string_isempty $__confirmed;

	git add .
	git status
	git_print_commit_add


	git_print_commit_subject
	git_print_commit_push
	git_print_commit_finish
	
	git_print_commit "$__projeto" "$__bootcamp" "$(italic "$__subject" )"
}

githCommit

