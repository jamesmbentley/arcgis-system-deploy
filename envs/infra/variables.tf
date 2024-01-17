variable "name" {
  type = string
  default = "james"
}

variable "vpc_cidr" {
  type    = string
  default = "10.10.0.0/16"
}

variable "domain" {
  type = string
  default = "plumr.xyz"
}

variable "blue_subdomain" {
  type = string
  default = "blue"
}

variable "green_subdomain" {
  type = string
  default = "green"
}

variable "arcgisserver_prefix" {
  type = string
  default = "arcserver"
}
variable "arcgisportal_prefix" {
  type = string
  default = "arcportal"
}
variable "arcgisdatastore_prefix" {
  type = string
  default = "arcdata"
}
variable "region" {
  type = string
  default = "us-east-1"
}

data "aws_availability_zones" "az" {
  state         = "available"
  exclude_names = ["us-east-1"]
}

data "aws_elb_service_account" "alb_log" {}
