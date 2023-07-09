output "ENDPOINT" {
  value = aws_s3_bucket.hosting_bucket.website_endpoint
}

output "DOMAIN" {
  value = aws_s3_bucket.hosting_bucket.website_domain
}