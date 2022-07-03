#!/bin/bash

 # if [ ! "$line" = "" ] && [ `echo $line | awk '{print $2}'` = "device" ]
#

function lines() {
  local file=$1
  local action=$2

$file | while read line; 
do 
  $action
done

}
