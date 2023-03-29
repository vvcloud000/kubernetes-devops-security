resource "google_compute_instance" "devsecops_cloud" {
  name         = "devsecops-cloud"
  machine_type = "e2-standard-4"
  tags         = ["allow-all"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-bionic-v20230324"
      size  = 50
    }
  }

  network_interface {
    network = "default"

    access_config {
      nat_ip = google_compute_address.static_ip.address
    }
  }
}
