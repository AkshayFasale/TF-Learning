# Resource block for VPC

resource "google_compute_network" "myVPC" {
  name                    = "vpc1"
  auto_create_subnetworks = false # defines VPC is manual

}

# resource block for subnet

resource "google_compute_subnetwork" "mysubnet" {
  name          = "subnet1"
  region        = "us-central1"
  ip_cidr_range = "10.128.0.0/20"
  network       = google_compute_network.myVPC.id
}