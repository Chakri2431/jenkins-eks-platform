# Creating S3 Bucket
resource "aws_s3_bucket" "Project_s3" {
  bucket        = var.bucket_name
  force_destroy = true

  tags = {
    env = var.env_name
  }
}

# Creating DynamoDB table
resource "aws_dynamodb_table" "Project_ddb_state_lock" {
  name         = var.ddb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    env = var.env_name
  }
}