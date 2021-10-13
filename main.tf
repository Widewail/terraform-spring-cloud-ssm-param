locals {
  app_name = length(var.env) > 0 ? "${var.app}_${var.env}" : var.app
}

resource "aws_ssm_parameter" "param" {
  name = "/config/${local.app_name}/${var.key}"
  type = var.type
  
  value = var.value
  tags = var.tags
}