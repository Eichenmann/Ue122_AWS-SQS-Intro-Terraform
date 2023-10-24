resource "aws_sqs_queue_policy" "sqs_policy" {
  queue_url = aws_sqs_queue.my_sqs_queue.id
  policy = jsonencode({
    Version = "2012-10-17",
    Id      = "${aws_sqs_queue.my_sqs_queue.arn}/SQSDefaultPolicy",
    Statement = [
      {
        Sid       = "SQSLambdaTrigger"
        Effect    = "Allow"
        Principal = "*"
        Action    = "sqs:SendMessage"
        Resource  = aws_sqs_queue.my_sqs_queue.arn
        Condition = {
          ArnEquals = {
            "aws:SourceArn" = aws_lambda_function.sqs_lambda_function.arn
          }
        }
      },
    ]
  })
}
