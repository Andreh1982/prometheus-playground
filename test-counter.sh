#!/bin/bash

counter=$(curl -X GET http://------:9090/api/v1/query?query=tf_sns_deploy | jq -r '.data.result[].value[1]')
let counter=counter+1
cat <<EOF | curl --data-binary @- http://-------:9091/metrics/job/tf_gitlab_sre
# TYPE tf_sns_deploy counter
tf_sns_deploy $counter
EOF
echo $counter
