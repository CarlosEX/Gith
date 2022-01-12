#!/bin/bash

#---------------------------[ resources ]--------------------------
# arquivos de recursos referenciando outros arquivos de funcoes do sitema

source ~/scripts_shell/gith/functions/color_function.sh 
source ~/scripts_shell/gith/functions/symbols_unicode_functions.sh

#----------------------[ variáveis globais ]-----------------------
# lista de váriáveis de suprte para a funções

#----------------------[ variáveis symbols ]-----------------------
# variáveis de origen do arquivo: ../symbol_unicode_functions.sh
# recebem os valores das funções de simbols

_git_commit=`symbol-git-commit`
_git_add=`symbol-git-add`
_git_push=`symbol-git-push`
_symbol_caneta=`symbol-caneta`
_symbol_raio=`raio`

#---------------------------[ funções ]----------------------------

#=================================================================
# Funções de impressão para console

# imprime mensagem de commite cancelado no console.
function git_print_commit_cancel(){
	echo `raio` $(blueb "Commit ")$(redb "(")$(redb "CANCELADO!")`raio`$(redb ")")
}

function git_print_commit_started() {
	echo -e "\n\t`raio` $(yellowb "Commit inicializado... ")\n"
}

function git_print_commit_finish() {
	echo -e "\n\t`raio` $(yellowb "Commit finalizado! ") \n";
	echo -e "\tInformações complementares do repositório";
}

function git_print_commit_status() {
	
	# variáveis de parâmetros
	local 	__tipo=${1};
	local 	__symbol=${2};
	local 	__color=${3};
	
	
	local 	__mesage;
		__mesage+=$_symbol_raio
		__mesage+="  "
		__mesage+=${__symbol}
		__mesage+=$(blueb "git:")
		__mesage+=$(blueb "(")
		__mesage+=$(lightblueb "$__tipo")
		__mesage+=$(blue "):" )
		__mesage+=" "
		__mesage+=`progressbar $__color`			#retorna valor função progressbar
		__mesage+="$($__color "$(italic "100% concluído!")")"

	echo -e "\t\t $__mesage"
}

function git_print_commit_add() {            
	git_print_commit_status "add" $_git_add greenb
} 

function git_print_commit_subject() {
	git_print_commit_status "commit" $_symbol_caneta blueb
}

function git_print_commit_push() { 
	git_print_commit_status "push" $_git_push purpleb
}

function git_commit_validate() {  

	local __validate=${1}
        case "$__validate" in
                "yes") git_print_commit_finish;;
                "no") git_print_commit_push;;
	esac
}

function git_print_commit() {  

	local __tipoProjeto=${1}; 
	local __nomeBootcamp=${2}
        local __mesageCommit=${3};
	
	echo -e "\t`xicara` $(purpleb "$__tipoProjeto")$(yellowb ":")$(lightblueb "$__nomeBootcamp")$(yellowb "::")$__mesageCommit\n" 

}

progressbar() {          
	
	local __color=${1};
	
	for i in {1..10}            
	do                             
		echo -ne $($__color "▉")
		sleep .00;                  
	done                                       
}

