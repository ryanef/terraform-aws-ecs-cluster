output "cluster_id" {
  value = try({for k,v in aws_ecs_cluster.cluster : k => v.id}, aws_ecs_cluster.cluster.id)
  }
output "cluster_arn" {
  value = try({for k,v in aws_ecs_cluster.cluster : k => v.arn}, aws_ecs_cluster.cluster.arn)
}

output "namespace_id" {
  value = aws_service_discovery_http_namespace.namespace.id
}
output "namespace_name" {
  value = aws_service_discovery_http_namespace.namespace.name
}