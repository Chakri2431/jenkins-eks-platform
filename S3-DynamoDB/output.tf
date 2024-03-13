output "bucket_name_output" {
  value = aws_s3_bucket.Project_s3.bucket
}

output "dynamodb_name_output" {
  value = aws_dynamodb_table.Project_ddb_state_lock.name
}