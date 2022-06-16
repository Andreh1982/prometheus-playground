#!/bin/bash
while :
    do
        echo "Sending Payload..."
        cat test.payload | curl --data-binary @- http://--------:9091//metrics/job/tf_gitlab_modules
        echo "Done!"
        sleep 30
        echo "Sending Payload.0"
        cat test.payload.0 | curl --data-binary @- http://------:9091//metrics/job/tf_gitlab_modules
        echo "Done!"
        sleep 30

    done
