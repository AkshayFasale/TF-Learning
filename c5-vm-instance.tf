resource "google_compute_instance" "myapp1" {
  project      = "terraform-practice-436907"
  count        = 2
  name         = "myapp${count.index}"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
  tags         = [tolist(google_compute_firewall.fw_ssh.target_tags)[0], tolist(google_compute_firewall.fw-http.target_tags)[0]]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }

  }
  network_interface {
    subnetwork = google_compute_subnetwork.mysubnet1.id
    access_config {

    }
  }


}
