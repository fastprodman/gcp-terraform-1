variable "vm_name" {
  type = string
}

variable "project_id" {
  type = string
}

variable "zone" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "subnetwork" {
  type = string
}

variable "tags" {
  type    = list(string)
  default = []
}

variable "boot_image" {
  type = string
}