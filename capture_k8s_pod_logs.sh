#!/bin/bash

if [ $# -ne 1 ] ;
then
   echo "Usage: $0 <k8s namespace e.g. kube-system>"
   exit 1
else
   NMSPC=$1
   if [ $NMSPC == '' ]
   then
       $NMSPC = "kube-system";
   fi

~/bin/list_k8s_pods.sh | while read line ; do `/usr/local/bin/kubectl logs --since=24h --namespace $NMSPC $line > $line.txt` ; done

fi
