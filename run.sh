#!/bin/bash
while :
    do
        echo "Sending Payload..."
        cat test.payload | curl --data-binary @- ***
        echo "Done!"
        sleep 20
        echo "Sending Payload.0"
        cat test.payload.0 | curl --data-binary @- ***
        echo "Done!"
        sleep 20

    done
