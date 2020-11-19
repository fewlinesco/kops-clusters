locals {
  bastion_autoscaling_group_ids = [aws_autoscaling_group.bastions-exp-01-aws-par-fewlines-net.id]
  bastion_security_group_ids    = [aws_security_group.bastion-exp-01-aws-par-fewlines-net.id]
  bastions_role_arn             = aws_iam_role.bastions-exp-01-aws-par-fewlines-net.arn
  bastions_role_name            = aws_iam_role.bastions-exp-01-aws-par-fewlines-net.name
  cluster_name                  = "exp-01.aws-par.fewlines.net"
  master_autoscaling_group_ids  = [aws_autoscaling_group.master-eu-west-3a-masters-exp-01-aws-par-fewlines-net.id, aws_autoscaling_group.master-eu-west-3b-masters-exp-01-aws-par-fewlines-net.id, aws_autoscaling_group.master-eu-west-3c-masters-exp-01-aws-par-fewlines-net.id]
  master_security_group_ids     = [aws_security_group.masters-exp-01-aws-par-fewlines-net.id, aws_security_group.masters-exp-01-aws-par-fewlines-net.id, aws_security_group.masters-exp-01-aws-par-fewlines-net.id]
  masters_role_arn              = aws_iam_role.masters-exp-01-aws-par-fewlines-net.arn
  masters_role_name             = aws_iam_role.masters-exp-01-aws-par-fewlines-net.name
  node_autoscaling_group_ids    = [aws_autoscaling_group.nodes-exp-01-aws-par-fewlines-net.id]
  node_security_group_ids       = [aws_security_group.nodes-exp-01-aws-par-fewlines-net.id]
  node_subnet_ids               = ["subnet-01460f79a501f5d19", "subnet-0bd2eae43e3857ea1", "subnet-0eb8dd751a8ea1248"]
  nodes_role_arn                = aws_iam_role.nodes-exp-01-aws-par-fewlines-net.arn
  nodes_role_name               = aws_iam_role.nodes-exp-01-aws-par-fewlines-net.name
  region                        = "eu-west-3"
  subnet_eu-west-3a_id          = "subnet-0eb8dd751a8ea1248"
  subnet_eu-west-3b_id          = "subnet-0bd2eae43e3857ea1"
  subnet_eu-west-3c_id          = "subnet-01460f79a501f5d19"
  subnet_ids                    = ["subnet-01460f79a501f5d19", "subnet-03d95a73192df635d", "subnet-047dc2b32941c1a21", "subnet-0bd2eae43e3857ea1", "subnet-0d69cd6a8bb09ac3b", "subnet-0eb8dd751a8ea1248"]
  subnet_utility-eu-west-3a_id  = "subnet-03d95a73192df635d"
  subnet_utility-eu-west-3b_id  = "subnet-047dc2b32941c1a21"
  subnet_utility-eu-west-3c_id  = "subnet-0d69cd6a8bb09ac3b"
  vpc_id                        = "vpc-04fdc669711c8c0ae"
}

output "bastion_autoscaling_group_ids" {
  value = [aws_autoscaling_group.bastions-exp-01-aws-par-fewlines-net.id]
}

output "bastion_security_group_ids" {
  value = [aws_security_group.bastion-exp-01-aws-par-fewlines-net.id]
}

output "bastions_role_arn" {
  value = aws_iam_role.bastions-exp-01-aws-par-fewlines-net.arn
}

output "bastions_role_name" {
  value = aws_iam_role.bastions-exp-01-aws-par-fewlines-net.name
}

output "cluster_name" {
  value = "exp-01.aws-par.fewlines.net"
}

output "master_autoscaling_group_ids" {
  value = [aws_autoscaling_group.master-eu-west-3a-masters-exp-01-aws-par-fewlines-net.id, aws_autoscaling_group.master-eu-west-3b-masters-exp-01-aws-par-fewlines-net.id, aws_autoscaling_group.master-eu-west-3c-masters-exp-01-aws-par-fewlines-net.id]
}

output "master_security_group_ids" {
  value = [aws_security_group.masters-exp-01-aws-par-fewlines-net.id, aws_security_group.masters-exp-01-aws-par-fewlines-net.id, aws_security_group.masters-exp-01-aws-par-fewlines-net.id]
}

output "masters_role_arn" {
  value = aws_iam_role.masters-exp-01-aws-par-fewlines-net.arn
}

output "masters_role_name" {
  value = aws_iam_role.masters-exp-01-aws-par-fewlines-net.name
}

output "node_autoscaling_group_ids" {
  value = [aws_autoscaling_group.nodes-exp-01-aws-par-fewlines-net.id]
}

output "node_security_group_ids" {
  value = [aws_security_group.nodes-exp-01-aws-par-fewlines-net.id]
}

output "node_subnet_ids" {
  value = ["subnet-01460f79a501f5d19", "subnet-0bd2eae43e3857ea1", "subnet-0eb8dd751a8ea1248"]
}

output "nodes_role_arn" {
  value = aws_iam_role.nodes-exp-01-aws-par-fewlines-net.arn
}

output "nodes_role_name" {
  value = aws_iam_role.nodes-exp-01-aws-par-fewlines-net.name
}

output "region" {
  value = "eu-west-3"
}

output "subnet_eu-west-3a_id" {
  value = "subnet-0eb8dd751a8ea1248"
}

output "subnet_eu-west-3b_id" {
  value = "subnet-0bd2eae43e3857ea1"
}

output "subnet_eu-west-3c_id" {
  value = "subnet-01460f79a501f5d19"
}

output "subnet_ids" {
  value = ["subnet-01460f79a501f5d19", "subnet-03d95a73192df635d", "subnet-047dc2b32941c1a21", "subnet-0bd2eae43e3857ea1", "subnet-0d69cd6a8bb09ac3b", "subnet-0eb8dd751a8ea1248"]
}

output "subnet_utility-eu-west-3a_id" {
  value = "subnet-03d95a73192df635d"
}

output "subnet_utility-eu-west-3b_id" {
  value = "subnet-047dc2b32941c1a21"
}

output "subnet_utility-eu-west-3c_id" {
  value = "subnet-0d69cd6a8bb09ac3b"
}

output "vpc_id" {
  value = "vpc-04fdc669711c8c0ae"
}

provider "aws" {
  region = "eu-west-3"
}

resource "aws_autoscaling_attachment" "bastions-exp-01-aws-par-fewlines-net" {
  autoscaling_group_name = aws_autoscaling_group.bastions-exp-01-aws-par-fewlines-net.id
  elb                    = aws_elb.bastion-exp-01-aws-par-fewlines-net.id
}

resource "aws_autoscaling_attachment" "master-eu-west-3a-masters-exp-01-aws-par-fewlines-net" {
  autoscaling_group_name = aws_autoscaling_group.master-eu-west-3a-masters-exp-01-aws-par-fewlines-net.id
  elb                    = aws_elb.api-exp-01-aws-par-fewlines-net.id
}

resource "aws_autoscaling_attachment" "master-eu-west-3b-masters-exp-01-aws-par-fewlines-net" {
  autoscaling_group_name = aws_autoscaling_group.master-eu-west-3b-masters-exp-01-aws-par-fewlines-net.id
  elb                    = aws_elb.api-exp-01-aws-par-fewlines-net.id
}

resource "aws_autoscaling_attachment" "master-eu-west-3c-masters-exp-01-aws-par-fewlines-net" {
  autoscaling_group_name = aws_autoscaling_group.master-eu-west-3c-masters-exp-01-aws-par-fewlines-net.id
  elb                    = aws_elb.api-exp-01-aws-par-fewlines-net.id
}

resource "aws_autoscaling_group" "bastions-exp-01-aws-par-fewlines-net" {
  enabled_metrics      = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_configuration = aws_launch_configuration.bastions-exp-01-aws-par-fewlines-net.id
  max_size             = 1
  metrics_granularity  = "1Minute"
  min_size             = 1
  name                 = "bastions.exp-01.aws-par.fewlines.net"
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "exp-01.aws-par.fewlines.net"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "bastions.exp-01.aws-par.fewlines.net"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "bastions"
  }
  tag {
    key                 = "k8s.io/role/bastion"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "bastions"
  }
  tag {
    key                 = "kubernetes.io/cluster/exp-01.aws-par.fewlines.net"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-03d95a73192df635d", "subnet-047dc2b32941c1a21", "subnet-0d69cd6a8bb09ac3b"]
}

resource "aws_autoscaling_group" "master-eu-west-3a-masters-exp-01-aws-par-fewlines-net" {
  enabled_metrics      = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_configuration = aws_launch_configuration.master-eu-west-3a-masters-exp-01-aws-par-fewlines-net.id
  max_size             = 1
  metrics_granularity  = "1Minute"
  min_size             = 1
  name                 = "master-eu-west-3a.masters.exp-01.aws-par.fewlines.net"
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "exp-01.aws-par.fewlines.net"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-eu-west-3a.masters.exp-01.aws-par.fewlines.net"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-eu-west-3a"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-eu-west-3a"
  }
  tag {
    key                 = "kubernetes.io/cluster/exp-01.aws-par.fewlines.net"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-0eb8dd751a8ea1248"]
}

resource "aws_autoscaling_group" "master-eu-west-3b-masters-exp-01-aws-par-fewlines-net" {
  enabled_metrics      = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_configuration = aws_launch_configuration.master-eu-west-3b-masters-exp-01-aws-par-fewlines-net.id
  max_size             = 1
  metrics_granularity  = "1Minute"
  min_size             = 1
  name                 = "master-eu-west-3b.masters.exp-01.aws-par.fewlines.net"
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "exp-01.aws-par.fewlines.net"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-eu-west-3b.masters.exp-01.aws-par.fewlines.net"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-eu-west-3b"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-eu-west-3b"
  }
  tag {
    key                 = "kubernetes.io/cluster/exp-01.aws-par.fewlines.net"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-0bd2eae43e3857ea1"]
}

resource "aws_autoscaling_group" "master-eu-west-3c-masters-exp-01-aws-par-fewlines-net" {
  enabled_metrics      = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_configuration = aws_launch_configuration.master-eu-west-3c-masters-exp-01-aws-par-fewlines-net.id
  max_size             = 1
  metrics_granularity  = "1Minute"
  min_size             = 1
  name                 = "master-eu-west-3c.masters.exp-01.aws-par.fewlines.net"
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "exp-01.aws-par.fewlines.net"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-eu-west-3c.masters.exp-01.aws-par.fewlines.net"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-eu-west-3c"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-eu-west-3c"
  }
  tag {
    key                 = "kubernetes.io/cluster/exp-01.aws-par.fewlines.net"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-01460f79a501f5d19"]
}

resource "aws_autoscaling_group" "nodes-exp-01-aws-par-fewlines-net" {
  enabled_metrics      = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_configuration = aws_launch_configuration.nodes-exp-01-aws-par-fewlines-net.id
  max_size             = 3
  metrics_granularity  = "1Minute"
  min_size             = 3
  name                 = "nodes.exp-01.aws-par.fewlines.net"
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "exp-01.aws-par.fewlines.net"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes.exp-01.aws-par.fewlines.net"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes"
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes"
  }
  tag {
    key                 = "kubernetes.io/cluster/exp-01.aws-par.fewlines.net"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-0eb8dd751a8ea1248", "subnet-0bd2eae43e3857ea1", "subnet-01460f79a501f5d19"]
}

resource "aws_ebs_volume" "a-etcd-events-exp-01-aws-par-fewlines-net" {
  availability_zone = "eu-west-3a"
  encrypted         = false
  size              = 20
  tags = {
    "KubernetesCluster"                                 = "exp-01.aws-par.fewlines.net"
    "Name"                                              = "a.etcd-events.exp-01.aws-par.fewlines.net"
    "k8s.io/etcd/events"                                = "a/a,b,c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/exp-01.aws-par.fewlines.net" = "owned"
  }
  type = "gp2"
}

resource "aws_ebs_volume" "a-etcd-main-exp-01-aws-par-fewlines-net" {
  availability_zone = "eu-west-3a"
  encrypted         = false
  size              = 20
  tags = {
    "KubernetesCluster"                                 = "exp-01.aws-par.fewlines.net"
    "Name"                                              = "a.etcd-main.exp-01.aws-par.fewlines.net"
    "k8s.io/etcd/main"                                  = "a/a,b,c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/exp-01.aws-par.fewlines.net" = "owned"
  }
  type = "gp2"
}

resource "aws_ebs_volume" "b-etcd-events-exp-01-aws-par-fewlines-net" {
  availability_zone = "eu-west-3b"
  encrypted         = false
  size              = 20
  tags = {
    "KubernetesCluster"                                 = "exp-01.aws-par.fewlines.net"
    "Name"                                              = "b.etcd-events.exp-01.aws-par.fewlines.net"
    "k8s.io/etcd/events"                                = "b/a,b,c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/exp-01.aws-par.fewlines.net" = "owned"
  }
  type = "gp2"
}

resource "aws_ebs_volume" "b-etcd-main-exp-01-aws-par-fewlines-net" {
  availability_zone = "eu-west-3b"
  encrypted         = false
  size              = 20
  tags = {
    "KubernetesCluster"                                 = "exp-01.aws-par.fewlines.net"
    "Name"                                              = "b.etcd-main.exp-01.aws-par.fewlines.net"
    "k8s.io/etcd/main"                                  = "b/a,b,c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/exp-01.aws-par.fewlines.net" = "owned"
  }
  type = "gp2"
}

resource "aws_ebs_volume" "c-etcd-events-exp-01-aws-par-fewlines-net" {
  availability_zone = "eu-west-3c"
  encrypted         = false
  size              = 20
  tags = {
    "KubernetesCluster"                                 = "exp-01.aws-par.fewlines.net"
    "Name"                                              = "c.etcd-events.exp-01.aws-par.fewlines.net"
    "k8s.io/etcd/events"                                = "c/a,b,c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/exp-01.aws-par.fewlines.net" = "owned"
  }
  type = "gp2"
}

resource "aws_ebs_volume" "c-etcd-main-exp-01-aws-par-fewlines-net" {
  availability_zone = "eu-west-3c"
  encrypted         = false
  size              = 20
  tags = {
    "KubernetesCluster"                                 = "exp-01.aws-par.fewlines.net"
    "Name"                                              = "c.etcd-main.exp-01.aws-par.fewlines.net"
    "k8s.io/etcd/main"                                  = "c/a,b,c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/exp-01.aws-par.fewlines.net" = "owned"
  }
  type = "gp2"
}

resource "aws_elb" "api-exp-01-aws-par-fewlines-net" {
  cross_zone_load_balancing = false
  health_check {
    healthy_threshold   = 2
    interval            = 10
    target              = "SSL:443"
    timeout             = 5
    unhealthy_threshold = 2
  }
  idle_timeout = 300
  listener {
    instance_port      = 443
    instance_protocol  = "TCP"
    lb_port            = 443
    lb_protocol        = "TCP"
    ssl_certificate_id = ""
  }
  name            = "api-exp-01-aws-par-fewlin-f4d7e5"
  security_groups = [aws_security_group.api-elb-exp-01-aws-par-fewlines-net.id, "sg-008993e306e018907"]
  subnets         = ["subnet-03d95a73192df635d", "subnet-047dc2b32941c1a21", "subnet-0d69cd6a8bb09ac3b"]
  tags = {
    "KubernetesCluster"                                 = "exp-01.aws-par.fewlines.net"
    "Name"                                              = "api.exp-01.aws-par.fewlines.net"
    "kubernetes.io/cluster/exp-01.aws-par.fewlines.net" = "owned"
  }
}

resource "aws_elb" "bastion-exp-01-aws-par-fewlines-net" {
  health_check {
    healthy_threshold   = 2
    interval            = 10
    target              = "TCP:22"
    timeout             = 5
    unhealthy_threshold = 2
  }
  idle_timeout = 300
  listener {
    instance_port      = 22
    instance_protocol  = "TCP"
    lb_port            = 22
    lb_protocol        = "TCP"
    ssl_certificate_id = ""
  }
  name            = "bastion-exp-01-aws-par-fe-8b58sr"
  security_groups = [aws_security_group.bastion-elb-exp-01-aws-par-fewlines-net.id]
  subnets         = ["subnet-03d95a73192df635d", "subnet-047dc2b32941c1a21", "subnet-0d69cd6a8bb09ac3b"]
  tags = {
    "KubernetesCluster"                                 = "exp-01.aws-par.fewlines.net"
    "Name"                                              = "bastion.exp-01.aws-par.fewlines.net"
    "kubernetes.io/cluster/exp-01.aws-par.fewlines.net" = "owned"
  }
}

resource "aws_iam_instance_profile" "bastions-exp-01-aws-par-fewlines-net" {
  name = "bastions.exp-01.aws-par.fewlines.net"
  role = aws_iam_role.bastions-exp-01-aws-par-fewlines-net.name
}

resource "aws_iam_instance_profile" "masters-exp-01-aws-par-fewlines-net" {
  name = "masters.exp-01.aws-par.fewlines.net"
  role = aws_iam_role.masters-exp-01-aws-par-fewlines-net.name
}

resource "aws_iam_instance_profile" "nodes-exp-01-aws-par-fewlines-net" {
  name = "nodes.exp-01.aws-par.fewlines.net"
  role = aws_iam_role.nodes-exp-01-aws-par-fewlines-net.name
}

resource "aws_iam_role_policy" "additional-nodes-exp-01-aws-par-fewlines-net" {
  name   = "additional.nodes.exp-01.aws-par.fewlines.net"
  policy = file("${path.module}/data/aws_iam_role_policy_additional.nodes.exp-01.aws-par.fewlines.net_policy")
  role   = aws_iam_role.nodes-exp-01-aws-par-fewlines-net.name
}

resource "aws_iam_role_policy" "bastions-exp-01-aws-par-fewlines-net" {
  name   = "bastions.exp-01.aws-par.fewlines.net"
  policy = file("${path.module}/data/aws_iam_role_policy_bastions.exp-01.aws-par.fewlines.net_policy")
  role   = aws_iam_role.bastions-exp-01-aws-par-fewlines-net.name
}

resource "aws_iam_role_policy" "masters-exp-01-aws-par-fewlines-net" {
  name   = "masters.exp-01.aws-par.fewlines.net"
  policy = file("${path.module}/data/aws_iam_role_policy_masters.exp-01.aws-par.fewlines.net_policy")
  role   = aws_iam_role.masters-exp-01-aws-par-fewlines-net.name
}

resource "aws_iam_role_policy" "nodes-exp-01-aws-par-fewlines-net" {
  name   = "nodes.exp-01.aws-par.fewlines.net"
  policy = file("${path.module}/data/aws_iam_role_policy_nodes.exp-01.aws-par.fewlines.net_policy")
  role   = aws_iam_role.nodes-exp-01-aws-par-fewlines-net.name
}

resource "aws_iam_role" "bastions-exp-01-aws-par-fewlines-net" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_bastions.exp-01.aws-par.fewlines.net_policy")
  name               = "bastions.exp-01.aws-par.fewlines.net"
}

resource "aws_iam_role" "masters-exp-01-aws-par-fewlines-net" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_masters.exp-01.aws-par.fewlines.net_policy")
  name               = "masters.exp-01.aws-par.fewlines.net"
}

resource "aws_iam_role" "nodes-exp-01-aws-par-fewlines-net" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_nodes.exp-01.aws-par.fewlines.net_policy")
  name               = "nodes.exp-01.aws-par.fewlines.net"
}

resource "aws_key_pair" "kubernetes-exp-01-aws-par-fewlines-net-c675e724a28f1b6183eb289cee453867" {
  key_name   = "kubernetes.exp-01.aws-par.fewlines.net-c6:75:e7:24:a2:8f:1b:61:83:eb:28:9c:ee:45:38:67"
  public_key = file("${path.module}/data/aws_key_pair_kubernetes.exp-01.aws-par.fewlines.net-c675e724a28f1b6183eb289cee453867_public_key")
}

resource "aws_launch_configuration" "bastions-exp-01-aws-par-fewlines-net" {
  associate_public_ip_address = true
  enable_monitoring           = false
  iam_instance_profile        = aws_iam_instance_profile.bastions-exp-01-aws-par-fewlines-net.id
  image_id                    = "ami-0703c7ba67ff20f7b"
  instance_type               = "t3.micro"
  key_name                    = aws_key_pair.kubernetes-exp-01-aws-par-fewlines-net-c675e724a28f1b6183eb289cee453867.id
  lifecycle {
    create_before_destroy = true
  }
  name_prefix = "bastions.exp-01.aws-par.fewlines.net-"
  root_block_device {
    delete_on_termination = true
    volume_size           = 32
    volume_type           = "gp2"
  }
  security_groups = [aws_security_group.bastion-exp-01-aws-par-fewlines-net.id]
}

resource "aws_launch_configuration" "master-eu-west-3a-masters-exp-01-aws-par-fewlines-net" {
  associate_public_ip_address = false
  enable_monitoring           = false
  iam_instance_profile        = aws_iam_instance_profile.masters-exp-01-aws-par-fewlines-net.id
  image_id                    = "ami-0703c7ba67ff20f7b"
  instance_type               = "t3.large"
  key_name                    = aws_key_pair.kubernetes-exp-01-aws-par-fewlines-net-c675e724a28f1b6183eb289cee453867.id
  lifecycle {
    create_before_destroy = true
  }
  name_prefix = "master-eu-west-3a.masters.exp-01.aws-par.fewlines.net-"
  root_block_device {
    delete_on_termination = true
    volume_size           = 64
    volume_type           = "gp2"
  }
  security_groups = [aws_security_group.masters-exp-01-aws-par-fewlines-net.id]
  user_data       = file("${path.module}/data/aws_launch_configuration_master-eu-west-3a.masters.exp-01.aws-par.fewlines.net_user_data")
}

resource "aws_launch_configuration" "master-eu-west-3b-masters-exp-01-aws-par-fewlines-net" {
  associate_public_ip_address = false
  enable_monitoring           = false
  iam_instance_profile        = aws_iam_instance_profile.masters-exp-01-aws-par-fewlines-net.id
  image_id                    = "ami-0703c7ba67ff20f7b"
  instance_type               = "t3.large"
  key_name                    = aws_key_pair.kubernetes-exp-01-aws-par-fewlines-net-c675e724a28f1b6183eb289cee453867.id
  lifecycle {
    create_before_destroy = true
  }
  name_prefix = "master-eu-west-3b.masters.exp-01.aws-par.fewlines.net-"
  root_block_device {
    delete_on_termination = true
    volume_size           = 64
    volume_type           = "gp2"
  }
  security_groups = [aws_security_group.masters-exp-01-aws-par-fewlines-net.id]
  user_data       = file("${path.module}/data/aws_launch_configuration_master-eu-west-3b.masters.exp-01.aws-par.fewlines.net_user_data")
}

resource "aws_launch_configuration" "master-eu-west-3c-masters-exp-01-aws-par-fewlines-net" {
  associate_public_ip_address = false
  enable_monitoring           = false
  iam_instance_profile        = aws_iam_instance_profile.masters-exp-01-aws-par-fewlines-net.id
  image_id                    = "ami-0703c7ba67ff20f7b"
  instance_type               = "t3.large"
  key_name                    = aws_key_pair.kubernetes-exp-01-aws-par-fewlines-net-c675e724a28f1b6183eb289cee453867.id
  lifecycle {
    create_before_destroy = true
  }
  name_prefix = "master-eu-west-3c.masters.exp-01.aws-par.fewlines.net-"
  root_block_device {
    delete_on_termination = true
    volume_size           = 64
    volume_type           = "gp2"
  }
  security_groups = [aws_security_group.masters-exp-01-aws-par-fewlines-net.id]
  user_data       = file("${path.module}/data/aws_launch_configuration_master-eu-west-3c.masters.exp-01.aws-par.fewlines.net_user_data")
}

resource "aws_launch_configuration" "nodes-exp-01-aws-par-fewlines-net" {
  associate_public_ip_address = false
  enable_monitoring           = false
  iam_instance_profile        = aws_iam_instance_profile.nodes-exp-01-aws-par-fewlines-net.id
  image_id                    = "ami-0703c7ba67ff20f7b"
  instance_type               = "m5.large"
  key_name                    = aws_key_pair.kubernetes-exp-01-aws-par-fewlines-net-c675e724a28f1b6183eb289cee453867.id
  lifecycle {
    create_before_destroy = true
  }
  name_prefix = "nodes.exp-01.aws-par.fewlines.net-"
  root_block_device {
    delete_on_termination = true
    volume_size           = 128
    volume_type           = "gp2"
  }
  security_groups = [aws_security_group.nodes-exp-01-aws-par-fewlines-net.id]
  user_data       = file("${path.module}/data/aws_launch_configuration_nodes.exp-01.aws-par.fewlines.net_user_data")
}

resource "aws_route53_record" "api-exp-01-aws-par-fewlines-net" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.api-exp-01-aws-par-fewlines-net.dns_name
    zone_id                = aws_elb.api-exp-01-aws-par-fewlines-net.zone_id
  }
  name    = "api.exp-01.aws-par.fewlines.net"
  type    = "A"
  zone_id = "/hostedzone/Z06323902UT237PH5YKOG"
}

resource "aws_route53_record" "bastion-exp-01-aws-par-fewlines-net" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.bastion-exp-01-aws-par-fewlines-net.dns_name
    zone_id                = aws_elb.bastion-exp-01-aws-par-fewlines-net.zone_id
  }
  name    = "bastion.exp-01.aws-par.fewlines.net"
  type    = "A"
  zone_id = "/hostedzone/Z06323902UT237PH5YKOG"
}

resource "aws_security_group_rule" "all-master-to-master" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-exp-01-aws-par-fewlines-net.id
  source_security_group_id = aws_security_group.masters-exp-01-aws-par-fewlines-net.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "all-master-to-node" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-exp-01-aws-par-fewlines-net.id
  source_security_group_id = aws_security_group.masters-exp-01-aws-par-fewlines-net.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "all-node-to-node" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-exp-01-aws-par-fewlines-net.id
  source_security_group_id = aws_security_group.nodes-exp-01-aws-par-fewlines-net.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "all-nodes-to-master" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-exp-01-aws-par-fewlines-net.id
  source_security_group_id = aws_security_group.nodes-exp-01-aws-par-fewlines-net.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "api-elb-egress" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-exp-01-aws-par-fewlines-net.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "bastion-egress" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-exp-01-aws-par-fewlines-net.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-exp-01-aws-par-fewlines-net.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-exp-01-aws-par-fewlines-net.id
  source_security_group_id = aws_security_group.bastion-exp-01-aws-par-fewlines-net.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.nodes-exp-01-aws-par-fewlines-net.id
  source_security_group_id = aws_security_group.bastion-exp-01-aws-par-fewlines-net.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-exp-01-aws-par-fewlines-net.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "https-elb-to-master" {
  from_port                = 443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-exp-01-aws-par-fewlines-net.id
  source_security_group_id = aws_security_group.api-elb-exp-01-aws-par-fewlines-net.id
  to_port                  = 443
  type                     = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.api-elb-exp-01-aws-par-fewlines-net.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "master-egress" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.masters-exp-01-aws-par-fewlines-net.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "node-egress" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-exp-01-aws-par-fewlines-net.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  from_port                = 1
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-exp-01-aws-par-fewlines-net.id
  source_security_group_id = aws_security_group.nodes-exp-01-aws-par-fewlines-net.id
  to_port                  = 2379
  type                     = "ingress"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  from_port                = 2382
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-exp-01-aws-par-fewlines-net.id
  source_security_group_id = aws_security_group.nodes-exp-01-aws-par-fewlines-net.id
  to_port                  = 4000
  type                     = "ingress"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  from_port                = 4003
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-exp-01-aws-par-fewlines-net.id
  source_security_group_id = aws_security_group.nodes-exp-01-aws-par-fewlines-net.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  from_port                = 1
  protocol                 = "udp"
  security_group_id        = aws_security_group.masters-exp-01-aws-par-fewlines-net.id
  source_security_group_id = aws_security_group.nodes-exp-01-aws-par-fewlines-net.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.bastion-exp-01-aws-par-fewlines-net.id
  source_security_group_id = aws_security_group.bastion-elb-exp-01-aws-par-fewlines-net.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-exp-01-aws-par-fewlines-net.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group" "api-elb-exp-01-aws-par-fewlines-net" {
  description = "Security group for api ELB"
  name        = "api-elb.exp-01.aws-par.fewlines.net"
  tags = {
    "KubernetesCluster"                                 = "exp-01.aws-par.fewlines.net"
    "Name"                                              = "api-elb.exp-01.aws-par.fewlines.net"
    "kubernetes.io/cluster/exp-01.aws-par.fewlines.net" = "owned"
  }
  vpc_id = "vpc-04fdc669711c8c0ae"
}

resource "aws_security_group" "bastion-elb-exp-01-aws-par-fewlines-net" {
  description = "Security group for bastion ELB"
  name        = "bastion-elb.exp-01.aws-par.fewlines.net"
  tags = {
    "KubernetesCluster"                                 = "exp-01.aws-par.fewlines.net"
    "Name"                                              = "bastion-elb.exp-01.aws-par.fewlines.net"
    "kubernetes.io/cluster/exp-01.aws-par.fewlines.net" = "owned"
  }
  vpc_id = "vpc-04fdc669711c8c0ae"
}

resource "aws_security_group" "bastion-exp-01-aws-par-fewlines-net" {
  description = "Security group for bastion"
  name        = "bastion.exp-01.aws-par.fewlines.net"
  tags = {
    "KubernetesCluster"                                 = "exp-01.aws-par.fewlines.net"
    "Name"                                              = "bastion.exp-01.aws-par.fewlines.net"
    "kubernetes.io/cluster/exp-01.aws-par.fewlines.net" = "owned"
  }
  vpc_id = "vpc-04fdc669711c8c0ae"
}

resource "aws_security_group" "masters-exp-01-aws-par-fewlines-net" {
  description = "Security group for masters"
  name        = "masters.exp-01.aws-par.fewlines.net"
  tags = {
    "KubernetesCluster"                                 = "exp-01.aws-par.fewlines.net"
    "Name"                                              = "masters.exp-01.aws-par.fewlines.net"
    "kubernetes.io/cluster/exp-01.aws-par.fewlines.net" = "owned"
  }
  vpc_id = "vpc-04fdc669711c8c0ae"
}

resource "aws_security_group" "nodes-exp-01-aws-par-fewlines-net" {
  description = "Security group for nodes"
  name        = "nodes.exp-01.aws-par.fewlines.net"
  tags = {
    "KubernetesCluster"                                 = "exp-01.aws-par.fewlines.net"
    "Name"                                              = "nodes.exp-01.aws-par.fewlines.net"
    "kubernetes.io/cluster/exp-01.aws-par.fewlines.net" = "owned"
  }
  vpc_id = "vpc-04fdc669711c8c0ae"
}

terraform {
  required_version = ">= 0.12.0"
}
