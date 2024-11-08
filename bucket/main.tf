// Setting a provider and a region
provider "aws" {
  region = var.region
}

// Creating a S3 bucket
resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket
  acl    = "private"

  versioning {
    enabled = true
  }

// Comment the following block if you want to destroy your S3 bucket
  lifecycle {
    prevent_destroy = true
  }
}