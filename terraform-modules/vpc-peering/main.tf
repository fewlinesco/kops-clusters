data "aws_vpc" "requestor" {
  id    = var.requestor_vpc_id
  tags  = var.requestor_vpc_tags
}

data "aws_vpc" "acceptor" {
  id    = var.acceptor_vpc_id
  tags  = var.acceptor_vpc_tags
}

data "aws_route_tables" "requestor" {
  vpc_id = data.aws_vpc.requestor.id
  tags   = var.requestor_route_table_tags
}

data "aws_route_tables" "acceptor" {
  vpc_id = data.aws_vpc.acceptor.id
  tags   = var.acceptor_route_table_tags
}


resource "aws_vpc_peering_connection" "default" {
  vpc_id      = data.aws_vpc.requestor.id
  peer_vpc_id = data.aws_vpc.acceptor.id

  auto_accept = var.auto_accept

  accepter {
    allow_remote_vpc_dns_resolution = var.acceptor_allow_remote_vpc_dns_resolution
  }

  requester {
    allow_remote_vpc_dns_resolution = var.requestor_allow_remote_vpc_dns_resolution
  }

  tags = var.tags

  timeouts {
    create = var.create_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}

resource "aws_route" "requestor" {
  count                     = length(distinct(sort(data.aws_route_tables.requestor.ids))) * length(data.aws_vpc.acceptor.cidr_block_associations)
  route_table_id            = element(distinct(sort(data.aws_route_tables.requestor.ids)), ceil(count.index / length(data.aws_vpc.acceptor.cidr_block_associations)))
  destination_cidr_block    = data.aws_vpc.acceptor.cidr_block_associations[count.index % length(data.aws_vpc.acceptor.cidr_block_associations)]["cidr_block"]
  vpc_peering_connection_id = join("", aws_vpc_peering_connection.default.*.id)
  depends_on                = [data.aws_route_tables.requestor, aws_vpc_peering_connection.default]
}

resource "aws_route" "acceptor" {
  count                     = length(distinct(sort(data.aws_route_tables.acceptor.ids))) * length(data.aws_vpc.requestor.cidr_block_associations)
  route_table_id            = element(distinct(sort(data.aws_route_tables.acceptor.ids)), ceil(count.index / length(data.aws_vpc.requestor.cidr_block_associations)))
  destination_cidr_block    = data.aws_vpc.requestor.cidr_block_associations[count.index % length(data.aws_vpc.requestor.cidr_block_associations)]["cidr_block"]
  vpc_peering_connection_id = join("", aws_vpc_peering_connection.default.*.id)
  depends_on                = [data.aws_route_tables.acceptor, aws_vpc_peering_connection.default]
}
