variable "aws_region" {
  type    = string
  default = "us-east-1"
}
variable "instance_type" {
  type    = string
  default = "t3.micro"
}
variable "ami_id" {
  type = string

  validation {
    condition     = length(trimspace(var.ami_id)) > 0
    error_message = "ami-0abc1234def567890"
  }
}
variable "existing_key_pair_name" {
  type    = string
  default = "devops"
}
variable "allowed_ssh_cidr" {
  type    = string
  default = "0.0.0.0/0"
}
