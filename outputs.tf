output "key" {
  value = aws_ssm_parameter.param.name
}

output "arn" {
  value = aws_ssm_parameter.param.arn
}