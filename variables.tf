variable "region" {
    description = "The AWS region to create resources in"
    type        = string
  
}
variable "instance_type" {
    description = "The type of EC2 instance to create"
    type        = string
  
}

variable "key_name" {
    description = "The name of the key pair to use for SSH access"
    type        = string
  
}

variable "ami_id" {
    description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instance"
    type        = string
  
}

