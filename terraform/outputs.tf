output "frontend_workflow_bucket_name" {
  value = aws_s3_bucket.frontend_workflow_s3_bucket.id
}

output "cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.frontend_workflow_cloudfront_distribution.id
}
