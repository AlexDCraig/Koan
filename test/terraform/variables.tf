variable "cluster_name" {
  default = "koan-cluster"
}

variable "cluster_location" {
  default = "us-west1"
}

variable "node_pool_name" {
  default = "koan-node-pool"
}

variable "node_pool_location" {
  default = "us-west1"
}

variable "node_count_for_pool" {
  default = 2
}

variable "project_id" {}