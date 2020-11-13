#!/bin/sh

set -euo pipefail

state=$1

modulesJson='{
  "module": {}
}'

for cluster in $(find .kops -type f -execdir printf "%s\n" {} +); do
  clusterName=$(basename $cluster '.yaml')
  clusterKey=$(echo $clusterName | tr '.' '_')

  kops replace -f ./.kops/$cluster --state $state --name $clusterName --force
  kops create secret --name $clusterName --state $state sshpublickey admin -i ~/.ssh/fewlines-k8s.pub
  kops update cluster --out=./terraform/kops-output/$clusterName --target=terraform --state=$state --name=$clusterName

  modulesJson=$(echo $modulesJson | jq ".module |= . +{\"$clusterKey\": { "source": \"./kops-output/$clusterName\" } }")
done

echo $modulesJson | jq > terraform/main.tf.json

