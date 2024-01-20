output "cluster_id" {
  value = {for k,v in aws_ecs_cluster.cluster : k => v.id}
}
output "cluster_arn" {
  value = {for k,v in aws_ecs_cluster.cluster : k => v.arn}
}

output "namespace_id" {
  value = aws_service_discovery_http_namespace.namespace.id
}
output "namespace_name" {
  value = aws_service_discovery_http_namespace.namespace.name
}