#!/bin/bash

# SYMBOLS
XICARA="\u2615\n"
CORACAO="\u2665\n"
RAIO="\u26A1\n"
NUVEM="\u25C5\n"
FOGUETE="\u1F680\n"
ELICOPTERO="\u1F681\n"
UNICORNIO="\U1F984\n"
PINGUIN="\U1F427\n"
PINTO="\U1F424\n"
VALIDO="\U2705\n"
XERROR="\U274C\n"
OK="\U1F197\n"
GIT_ADD="\U1F4E9\n"
GIT_PUSH="\U1F4E4\n"
GIT_COMMIT="\U1F4DD\n"
CANETA="\U1F58A\n"

function printSymbol(){
	local __symbol=${1}
	printf "$__symbol"
}

function symbol-caneta(){
        printSymbol $CANETA
}

function symbol-git-add(){
	printSymbol $GIT_ADD
}

function symbol-git-push(){         
	printSymbol $GIT_PUSH
}

function symbol-git-commit(){      
	printSymbol $GIT_COMMIT
}

function ok(){
	printSymbol $OK
}

function valido(){
	printSymbol $VALIDO
}	

function xerror(){
        printSymbol $XERROR
}

function xicara(){ 
	printSymbol $XICARA
}

function coracao(){
	printSymbol $CORACAO
}

function raio(){
	printSymbol $RAIO
}

function nuvem(){
	printSymbol $NUVEMm
}

function elicoptero(){
	printSymbol $ELICOPTERO
}

function foguete(){
	printSymbol $FOGUETE
}

function unicornio(){
	printSymbol $UNICORNIO
}
