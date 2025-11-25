#!/bin/bash

# Allow running locally without exporting ZOOBINDIR first by falling back to
# the checked-in ZooKeeper distribution. Remote setups can still override it.
if [[ -z "$ZOOBINDIR" ]]; then
    ZOOBINDIR=/Users/evanjiang/Desktop/comp_512/p3/apache-zookeeper-3.8.5-bin/bin
fi

if [[ -z "$ZOOBINDIR" ]]; then
    echo "Error!! ZOOBINDIR is not set" 1>&2
    exit 1
fi

. $ZOOBINDIR/zkEnv.sh

javac -cp $CLASSPATH:../task:.: DistClient.java
