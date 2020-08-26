#!/bin/bash

function kaf() {
    if [[ $1 == "ls" ]]; then
        kafka-topics --list --bootstrap-server $2
    elif [[ $1 == "des" ]]; then
        kafka-topics --describe --bootstrap-server $2 --topic $3
    elif [[ $1 == "con" ]]; then
        if [[ $5 == "beg" ]]; then
            from_beg="-o beginning"
        fi
        command="kafkacat -f 'Key: %k\nValue: %s\n\n' -C -b $2 -t $3 -c$4 $from_beg"
        eval $command
    fi
}




