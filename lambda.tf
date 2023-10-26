resource "aws_lambda_function" "sqs_lambda_function" {
  function_name    = "SQSLambdaFunction"
  role             = aws_iam_role.lambda_exec.arn
  handler          = "index.handler"
  runtime          = "nodejs18.x"
  filename         = "lambda_function_payload.zip"
}

resource "aws_lambda_permission" "sqs_lambda_permission" {
  statement_id  = "AllowExecutionFromSQS"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.sqs_lambda_function.function_name
  principal     = "sqs.amazonaws.com"
  source_arn    = aws_sqs_queue.my_sqs_queue.arn
}

resource "aws_lambda_event_source_mapping" "sqs_lambda_function" {
  event_source_arn = aws_sqs_queue.my_sqs_queue
  function_name = aws_lambda_function.sqs_lambda_function
}