
resource "aws_ecs_cluster" "cluster" {
  name = var.cluster_name

  service_connect_defaults {
    namespace = aws_service_discovery_http_namespace.namespace.arn
  }

  setting {
    name = "containerInsights"
    value = var.containerInsights
  }

  tags = {
    Name = "${var.environment}-${var.cluster_name}"
  }
}

resource "aws_service_discovery_http_namespace" "namespace" {
  name        = var.service_namespace
  description = var.service_namespace_description
}