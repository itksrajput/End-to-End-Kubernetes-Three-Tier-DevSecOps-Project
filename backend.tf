terraform {
  backend "s3" {
    bucket         = "terraform-state-eks-20241216-xyz1234"  # Ensure this is globally unique
    region         = "us-west-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}


