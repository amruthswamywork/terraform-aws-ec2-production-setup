terraform {
  backend "s3" {
    bucket = "amruth-bucket-swamy-30-26"
    key    = "amruth/terraform.tfstate"
    region = "ap-south-2"
    #dynamodb_table = "terraform-locks"
    
  }
}
