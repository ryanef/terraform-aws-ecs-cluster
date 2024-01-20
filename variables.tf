variable "use_launch_template" {
  default = false
}

variable "cluster_name" {
  default = "prelaunch"
  type = string
}

variable "service_namespace" {
  default = "prelaunch"
  type = string
}

variable "service_namespace_description" {
  type = string
  default = "namespace description"
}

variable "containerInsights" {
  default = "enabled"
  type = string
}

variable "environment" {
  default = "dev"
  type = string
}

variable "cluster_count" {
  default = 1
  type = number
}