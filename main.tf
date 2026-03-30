provider "aws" {
    region = var.region
  
}

# Create an security group
resource "aws_security_group" "my-security-group" {
    name = "my-security-group"
    description = "Allow SSH and HTTP traffic"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}


resource "aws_instance" "my-instance1" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
}                                                                       


resource "aws_s3_bucket" "amruth-bucket" {
    bucket = "amruth-bucket-swamy-30-26"
  
}

resource "aws_dynamodb_table" "terraform_locks" {
    name         = "terraform-locks"
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
  
}