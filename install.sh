#!/bin/bash

PATH_TO_FILE="$(cd `dirname $0` && pwd)";

export		RED="[0;31m"
export		GREEN="[0;32m"
export		DEFAULT="[0;39m"

cd ${PATH_TO_FILE} && git submodule init && git submodule update

if which mutt >/dev/null; then
	rm -rf ~/.muttrc 
  ln -s ${PATH_TO_FILE}/muttrc ~/.muttrc;
else
  echo "${RED}Attention: ${DEFAULT} Mutt not found"
fi 
