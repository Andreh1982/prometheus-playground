#!/bin/bash

counter=0

while :
    do
        echo "Creating Pipeline..."
        curl --request POST --header "PRIVATE-TOKEN: ***" "https://--------/api/v4/projects/2240/pipeline?ref=main" | jq
        echo "Done!"
        sleep 30
        let counter=counter+1
        echo "#############################"
        echo "# Pipelines executadas:" $counter
        echo "#############################"
done
