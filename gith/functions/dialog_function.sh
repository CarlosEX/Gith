#!/bin/bash

DIALOG="termux-dialog radio"
TEXT="termux-dialog text"
CONFIRM="termux-dialog confirm"

function dialogRadio {
  local __options=${1}
  local __title=${2}
  echo "$($DIALOG -v "$__options" -t "$__title" | jq '.text' -r )"
  return 1
}

function dialogText {
  local __hint=${1}
  local __title=${2}
  echo "$($TEXT -i "$__hint" -t "$__title" | jq '.text' -r)"  
  return 1
}

function dialogConfirm {
  local __hint=${1}  
  local __title=${2}
  echo "$($CONFIRM -i "$__hint" -t "$__title" | jq '.text' -r)"
  return 1
}
