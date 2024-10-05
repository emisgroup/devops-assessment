variable "region" {
  default = "eu-west-2"
  type = string
}

variable "cluster_name" {
  default = "emis-eks-cluster"
  type = string
}

variable "node_group_name" {
  default = "emis-eks-node-group"
  type = string
}
