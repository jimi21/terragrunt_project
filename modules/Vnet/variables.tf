variable "prefix" {}
variable "location" {}
variable "name" {}
variable "ip_conf_name" {
  default = "testconfiguration1"
}
variable "ssh_port" {
  description = "The port the azure Instance should listen on for SSH requests."
  default     = 22
}

variable "ssh_user" {
  description = "SSH user name to use for remote exec connections,"
  default     = "ubuntu"
}

variable "admin_uname" {
  default = "jimi"
}

variable "admin_pwd" {
  default = "einfochips@123"
}