variable "name" {
  type = string
  default = "arcserver-james"
}
variable "instance_type" {
  type = string
  default = "t3.xlarge"
}
variable "key_name" {
  type        = string
  description = "tf-key-pair"
  default     = "github-packer"
}
variable "color" {
  type        = string
  description = "color of deployment"
  default = "blue"
}
variable "deploy_purpose" {
  type        = string
  description = "purpose of deployment, prod or dev. specified with command only"
  default     = "dev"
}
variable "payload_servercert" {
  type        = string
  description = "The payload for server certificate password to encrypt with kms"
  default     = "temp"
}
variable "payload_portaladmin" {
  type        = string
  description = "The payload for portaladmin password to encrypt with kms"
  default     = "temp"
}
variable "payload_serveradmin" {
  type        = string
  description = "The payload for serveradmin password to encrypt with kms"
  default     = "temp"
}
variable "payload_serviceaccount" {
  type        = string
  description = "The payload for serviceaccount password to encrypt with kms"
  default     = "temp"
}
data "aws_ami" "arcgisserver" {
  most_recent = true
  name_regex  = "^arcgisserver"
  owners      = ["self"]
  filter {
    name   = "tag:AMI_ROLE"
    values = ["${var.deploy_purpose}"]
  }
}
data "aws_ami" "arcgisportal" {
  most_recent = true
  name_regex  = "^arcgisportal"
  owners      = ["self"]
  filter {
    name   = "tag:AMI_ROLE"
    values = ["${var.deploy_purpose}"]
  }
}
data "aws_ami" "arcgisdatastore" {
  most_recent = true
  name_regex  = "^arcgisdatastore"
  owners      = ["self"]
  filter {
    name   = "tag:AMI_ROLE"
    values = ["${var.deploy_purpose}"]
  }
}

# Esri