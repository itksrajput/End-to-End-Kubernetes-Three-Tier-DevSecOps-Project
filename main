
# Create S3 Bucket for Terraform State Storage
resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state-eks-20241216-xyz126"  # Ensure this is globally unique
  acl    = "private"
}

# Create DynamoDB Table for Terraform State Locking
resource "aws_dynamodb_table" "state_lock" {
  name         = "terraform-lock-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"  # String type
  }

  tags = {
    "Name"        = "TerraformStateLock"
    "Environment" = "Terraform"
