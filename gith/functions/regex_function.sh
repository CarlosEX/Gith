#!/bin/bash

function _extraiSiglaEntreParenteses(){
	
	local __result=$1;
	local __input=$2;
	local __regex="s/.*(\([0-9]\+\).*/\1/p";

	__result=$( echo $__input | sed "$__regex" -n )

}

echo $__result
