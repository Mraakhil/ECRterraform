provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAVVZOOI3AISHJUVQO"
  secret_key = "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"
}
resource "aws_ecr_repository" "my_ecr_repo" {
  name                 = "my-ecr-repo"
  image_tag_mutability = "MUTABLE"  # or "IMMUTABLE" based on your requirement
  image_scanning_configuration {
    scan_on_push = true
  }
}
