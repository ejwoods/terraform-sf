provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "my_bucket" {
  bucket  = "terraform-sf-s3-001"
  tags    = {
	Name          = "MyS3Bucket"
	Environment    = "Production"
  }
}