variable "prefix" {}
variable "location" {}
variable "name" {}
variable "netid" {}

variable "os_disk_name" {
  default = "myosdisk1"
}
variable "data_disk_name" {
  default = "datadisk0"
}

variable "os_comp_name" {
  default = "hostname"
}

variable "admin_uname" {
  default = "jimi"
}

variable "admin_pwd" {
  default = "einfochips@123"
}

variable "rglocation" {
  default = "West US 2"
}

variable "environ" {}