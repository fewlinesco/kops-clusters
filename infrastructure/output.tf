output "kops_s3_bucket_name" {
  value = aws_s3_bucket.kops_state.bucket
}

output "cluster_envs" {
  description = "Clusters environments"
  value       = [
    for e in keys(local.cluster_envs) : lookup(local.cluster_envs, e)
  ]
}

output "rds_password" {
  description = "TODO: REMOVE IT FROM OUTPUT"
  value       = module.master.this_db_instance_password
}
