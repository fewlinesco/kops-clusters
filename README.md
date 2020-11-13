# Fewlines Kops Clusters

## Naming

VPC naming scheme:

`<env>-<number>.<provider>-<region>.fewlines.net`

Cluster naming scheme:

`<env>-<number>.<provider>-<region>.fewlines.net`

### Env types

- Production  : `prd`
- Staging     : `stg`
- Development : `dev`
- Operations  : `ops`
- Test        : `tst`

### Providers

#### AWS

Code: `aws`

Regions:

- eu-west-1       : `irl`
- eu-west-2       : `lon`
- eu-west-3       : `par`
- eu-central-1    : `fra`
- ap-southeast-1  : `sin`

## Prerequisites

- Terraform
- Jq
- Kops

*(TODO: Add Brewfile)*

## Add a cluster

- Go to `infrastructure/clusters.tf`
- Add a new cluster module in the following format:

```
module "<a cluster env name>" {
  source = "./modules/cluster-environment"

  providers       = {
    aws = aws.<region>
  }

  env_code      = "<env code>"
  number        = "<unused two digits number>"
  provider_code = "<provider code>"
  region_code   = "<region code>"
  aws_region    = "<aws region>"
}
```

> For the parameters like codes, refer to the list at the begining of the readme

- Add the cluster definition to the `locals.cluster_envs` list

```
locals {
  cluster_envs = {
    "01" = module.cluster_env_01,
    "02" = module.cluster_env_02,
    # Add your new cluster here
  }
}
```

- Run the following command:

```
task update
```


## Delete a cluster

Deleting a cluster is a bit cumbersome for now. It will be improved in the future.

### Set the Kops state env variable

```
export KOPS_STATE_STORE=s3://fewlines-clusters-kops-s3
```

### Remove the cluster from the infrastructure definition

- Go to `infrastructure/clusters.tf`
- Remove the cluster module from the file
- Remove the cluster declaration from the `locals.cluster_envs` block

### Update the Terraform output

Go to the Terraform definition of the cluster in `clusters/terraform/kops-output`

Remove everything but the provider definition in the `kubernetes.tf` file (what's left should look like this):

```
provider "aws" {
  region = "eu-central-1"
}
```

Run the following commands:

```
export CLUSTER_NAME=<cluster name>
task cluster:deploy
kops delete cluster --unregister --yes $CLUSTER_NAME
rm clusters/.environments/${CLUSTER_NAME}.json
rm clusters/.kops/${CLUSTER_NAME}.yaml
rm -rf clusters/terraform/kops-output/${CLUSTER_NAME}
task update
```

If it complains that the Zone is not empty, delete the cluster API record from the zone in Route53 and run the update again

```
task update
```
