variable "project" {
  type = string
}

variable "env" {
type = string
}

variable "ami" {
type = string
}

locals {
image-timestamp = "${formatdate("DD-MM-YYYY-hh-mm", timestamp())}"
image-name = "${var.project}-${var.env}-${local.image-timestamp}"
}
