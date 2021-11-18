#!/bin/bash

/usr/local/bin/kubectl --namespace kube-system get pods | awk '(NR>1){print $1}'
