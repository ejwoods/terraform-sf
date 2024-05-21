provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "terraform-sf-s3-001" {
  bucket  = "terraform-sf-s3-001"
  tags    = {
	Name          = "MyS3Bucket"
	Environment    = "Production"
  }
}
resource "aws_s3_bucket" "terraform-sf-s3-002" {
  bucket  = "terraform-sf-s3-002"
  tags    = {
	Name          = "MyS3Bucket"
	Environment    = "Production"
  }
}