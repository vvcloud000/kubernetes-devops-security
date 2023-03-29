resource "google_compute_address" "static_ip" {
  name   = "static-ip"
  region = "us-east1"
}

output "static_ip_address" {
  value = google_compute_address.static_ip.address
}
