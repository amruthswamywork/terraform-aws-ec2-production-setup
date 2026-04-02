terraform {
  backend "s3" {
    bucket = "bucketname"
    key    = "amruth/terraform.tfstate"
    region = "ap-south-2"
    dynamodb_table = "terraform-locks"
    
  }
}
