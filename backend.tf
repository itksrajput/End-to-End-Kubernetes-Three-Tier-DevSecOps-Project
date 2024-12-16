terraform {
  backend "s3" {
    bucket         = "terraform-state-eks-20241216-xyz126"  # Ensure this is globally unique
    region         = "us-east-1"                             # Specify your region
    key            = "eks/terraform.tfstate"                 # Path within the S3 bucket for the state file
    dynamodb_table = "terraform-lock-table"                  # DynamoDB table for state locking
    encrypt        = true                                    # Enable server-side encryption of state file
  }
}


