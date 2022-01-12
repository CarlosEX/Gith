#!/bin/bash

#Scripts para manipulação de arquivos csv

function readCsv {
  	local __file=${1}
  
	while IFS=, read -r col1 
  	do
    		echo "$col1"
  	done < $__file
}

