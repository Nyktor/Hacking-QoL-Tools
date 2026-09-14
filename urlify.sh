#!/bin/bash

:'
Transforms a string into its UTF-8, URL encoded version.
'

urlifyChar(){
   case $1 in
    ' ')  echo '%20' ;;
    '!')  echo '%21' ;;
    '"')  echo '%22' ;;
    '#')  echo '%23' ;;
    '$')  echo '%24' ;;
    '%')  echo '%25' ;;
    '&')  echo '%26' ;;
    "'")  echo '%27' ;;
    '(')  echo '%28' ;;
    ')')  echo '%29' ;;
    '*')  echo '%2A' ;;
    '+')  echo '%2B' ;;
    ',')  echo '%2C' ;;
    '-')  echo '%2D' ;;
    '.')  echo '%2E' ;;
    '/')  echo '%2F' ;;
    ':')  echo '%3A' ;;
    ';')  echo '%3B' ;;
    '<')  echo '%3C' ;;
    '=')  echo '%3D' ;;
    '>')  echo '%3E' ;;
    '?')  echo '%3F' ;;
    '@')  echo '%40' ;;
    '[')  echo '%5B' ;;
    '\\') echo '%5C' ;;
    ']')  echo '%5D' ;;
    '^')  echo '%5E' ;;
    '_')  echo '%5F' ;;
    '`')  echo '%60' ;;
    '{')  echo '%7B' ;;
    '|')  echo '%7C' ;;
    '}')  echo '%7D' ;;
    '~')  echo '%7E' ;;
    *) echo $1 ;;
	esac
}

if [[ $# != 1 ]]; then
   echo -n "Usage: urlify [STRING_TO_URLIFY]";
   exit 1;
fi

urlified="";

for ((i = 0; i<${#1}; i++ )); do
   char=$(urlifyChar "${1:i:1}")
   urlified="$urlified$char"
done

echo $urlified
