# Resource block for VPC

resource "google_compute_network" "myVPC" {
  name                    = "vpc1"
  auto_create_subnetworks = false # defines VPC is manual
  project                 = "terraform-practice-436907"

}

# resource block for subnet

resource "google_compute_subnetwork" "mysubnet1" {
  name          = "subnet1"
  provider      = google.dev
  ip_cidr_range = "10.128.0.0/20"
  network       = google_compute_network.myVPC.id
}

resource "google_compute_subnetwork" "mysubnet2" {
  name          = "subnet2"
  provider      = google.prod
  ip_cidr_range = "10.132.0.0/20"
  network       = google_compute_network.myVPC.id
}
