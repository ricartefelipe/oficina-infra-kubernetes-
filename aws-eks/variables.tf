variable "aws_region" {
  type    = string
  default = "sa-east-1"
}

variable "cluster_name" {
  type    = string
  default = "oficina-dev"
}

variable "cluster_version" {
  type    = string
  default = "1.30"
}

variable "vpc_id" {
  type        = string
  description = "VPC criada pelo repo oficina-infra-database"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnets publicas da VPC (lab)"
}

variable "rds_security_group_id" {
  type        = string
  description = "SG do RDS para liberar Postgres a partir dos nodes EKS"
}

variable "node_instance_types" {
  type    = list(string)
  default = ["t3.small"]
}

variable "node_desired_size" {
  type    = number
  default = 1
}
