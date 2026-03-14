resource "google_compute_instance" "vm" {
  project = var.project_id
  name = var.vm_name
  zone = var.zone
  machine_type = var.machine_type
  tags = var.tags

  boot_disk {
    initialize_params {
        image = var.boot_image
    }
  }

  network_interface {
    subnetwork = var.subnetwork

    access_config {}
  }

  metadata = {
    enable-oslogin = "FALSE"
  }
}


