provider "google" {
  version = "~> 3.45.0"
  credentials = file("sample.json")
  region = var.region
  zone = var.zone
  project = var.project_id
}
resource "google_compute_instance" "Firewall-1" {
  name         = var.instance_name
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}