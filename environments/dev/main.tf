module "app_vm" {
  source = "../../modules/compute_instance"

  vm_name = "terraform"
  project_id = var.project_id
  zone = var.zone
  machine_type = "e2-medium"
  subnetwork = var.subnetwork

  tags = ["app", "dev"]

  boot_image = "debian-cloud/debian-12"
}