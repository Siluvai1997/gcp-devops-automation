
provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_container_cluster" "primary" {
  name     = "devops-cluster"
  location = "us-central1-c"

  node_config {
    machine_type = "e2-medium"
  }

  initial_node_count = 1
}
