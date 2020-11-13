#!/bin/sh

set -euo pipefail

tfOut=$1
kopsS3Bucket=$(echo "${tfOut}" | jq -r .kops_s3_bucket_name.value)
clusters=$(echo "${tfOut}" | jq -c '.cluster_envs | .value | .[]')

for cluster in $(echo "${clusters}"); do
  clusterName=$(echo $cluster | jq -r .cluster_name )

  echo $cluster | jq --arg bucket $kopsS3Bucket '. + {kops_s3_bucket_name: $bucket}' > .environments/${clusterName}.json

  kops toolbox template \
    --name $clusterName \
    --values .environments/${clusterName}.json \
    --template template.yaml \
    --format-yaml > .kops/${clusterName}.yaml
done
