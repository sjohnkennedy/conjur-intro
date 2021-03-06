#!/bin/bash
  
#set -x
#set -e

function validate_app {
  APPNAME=$1
  CHECK_APP=$( which $APPNAME )
  if [ -z "$CHECK_APP" ]
  then
     echo "Please install $APPNAME"
     exit 1
  fi
}

validate_app oc

oc delete project $1
