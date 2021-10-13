locals {
  app_name = (var.env == null || length(var.env) > 0) ? "${var.app}_${var.env}" : var.app
  default_tags = {
    env = var.env
  }
}

resource "aws_ssm_parameter" "param" {
  name = "/config/${local.app_name}/${var.key}"
  type = var.type

  value = var.value
  tags = var.tags == null ? local.default_tags : var.tags
}