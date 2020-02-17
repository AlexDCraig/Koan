resource "google_container_cluster" "primary" {
  name = var.cluster_name
  location = var.cluster_location
  remove_default_node_pool = true
  initial_node_count = 1
  project = var.project_id
}