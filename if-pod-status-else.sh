#!/bin/bash

podStatus=$(kubectl get pods -n ingress -o=jsonpath='{range .items[*]}{.status.conditions[?(@.type=="ContainersReady")].status}{"\n"}{end}')
    for elem in $podStatus
    do
        echo $elem
        if [ $elem != "Running" ]
        then
            return 0
        fi
    done
    return 1
}
allRunning
allAreRunning=$

if [ $allAreRunning == 1 ] 
then
    echo "all are running"
    kubectl delete ingress -n <namespace>
else
    echo "not ready"
    kubectl apply -f ingress -n <namespace>
fi
