module "koan_cluster" {
  source = "./modules/google_container_cluster"
  cluster_location = var.cluster_location
  cluster_name = var.cluster_name
  project_id = var.project_id
}

module "koan_node_pool" {
  source = "./modules/google_container_node_pool"
  cluster_name = var.cluster_name
  node_pool_count = var.node_count_for_pool
  node_pool_location = var.node_pool_location
  node_pool_name = var.node_pool_name
  project_id = var.project_id
}