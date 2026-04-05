# Developer IAM User
resource "aws_iam_user" "dev_view" {
  name = "bedrock-dev-view"

  tags = {
    Name    = "bedrock-dev-view"
    Project = "barakat-2025-capstone"
  }
}

# Attach ReadOnly Policy
resource "aws_iam_user_policy_attachment" "dev_view_readonly" {
  user       = aws_iam_user.dev_view.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

# S3 PutObject Policy for dev user
resource "aws_iam_user_policy" "dev_view_s3" {
  name = "bedrock-dev-s3-put"
  user = aws_iam_user.dev_view.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect   = "Allow"
      Action   = "s3:PutObject"
      Resource = "arn:aws:s3:::bedrock-assets-alt-soe-025-0161/*"
    }]
  })
}

# Access Key for dev user
resource "aws_iam_access_key" "dev_view" {
  user = aws_iam_user.dev_view.name
}

# Output access keys
output "dev_view_access_key_id" {
  value = aws_iam_access_key.dev_view.id
}

output "dev_view_secret_access_key" {
  value     = aws_iam_access_key.dev_view.secret
  sensitive = true
}
