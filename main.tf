resource "aws_ecr_lifecycle_policy" "my_policy" {
  repository = aws_ecr_repository.my_ecr_repo.name

  policy = jsonencode({
    rules = [
      {
        rule_priority = 1
        description   = "Keep only 10 images"
        selection     = {
          count_type        = "imageCountMoreThan"
          count_number      = 10
          tag_status        = "tagged"
          tag_prefix_list   = ["prod"]
        }
        action = {
          type = "expire"
        }
      }
    ]
  })
}
