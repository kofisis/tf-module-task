resource "aws_s3_bucket" "bucket" {
  bucket = "ergo-task-1"
  acl    = "private"

  tags = {
    Name = "ergo-task-bucket"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

#creating IAM user for user provided in variable file
resource "aws_iam_user" "users3" {
    name = var.user.0
  
}

#creating an iam policy for the user to access the s3 bucket created

resource "aws_iam_policy" "s3_bucket_policy" {
    name = "s3_bucket_policy_for_an_IAM_user"

    policy = jsonencode({

  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1634545204400",
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::ergo-task-1"
    }
  ]

    })

}


#Attaching the created policy to the bucket policy for the user
resource "aws_iam_policy_attachment" "s3_bucket_policy_attachment" {
    name = "policy-attachement"
    users = [aws_iam_user.users3.name]
    policy_arn = aws_iam_policy.s3_bucket_policy.arn
  
}
