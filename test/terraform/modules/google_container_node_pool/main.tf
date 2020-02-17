resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = var.node_pool_name
  project    = var.project_id
  location   = var.node_pool_location
  cluster    = var.cluster_name
  node_count = var.node_pool_count

  node_config {
    preemptible  = true
    machine_type = "n1-standard-1"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}