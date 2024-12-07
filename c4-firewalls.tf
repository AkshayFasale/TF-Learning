# Resouce : firewall Rule : SSH

resource "google_compute_firewall" "fw_ssh" {
  project = "terraform-practice-436907"
  name    = "firewall-rule-allow-ssh22"
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = google_compute_network.myVPC.id
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh-tag"]
}

#resource for firewall rule 
resource "google_compute_firewall" "fw-http" {
  project = "terraform-practice-436907"
  name    = "firewall-rule-allow-http80"
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = google_compute_network.myVPC.id
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["weserver-tag"]
}