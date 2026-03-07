#!/bin/bash

counter=0
while ./gradlew clean build --no-daemon --rerun-tasks; do
    ((counter++))
    echo "**************************************************************************"
    echo "### Build succeeded (execution number: $counter) -->> running again... ###"
    echo "**************************************************************************"
done

((counter++))
echo ">>> Build failed on execution number: $counter at $(date) <<<"
