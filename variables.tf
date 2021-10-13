variable "value" {
  description = "Value of the parameter"
  type = string
}

variable "key" {
  description = "Name of the parameter"
  type = string
  validation {
    condition = var.key != null && length(var.key) > 0
    error_message = "Parameter 'key' is required."
  }
}

variable "app" {
  description = "The name of the application this key applies to"
  type = string
  default = "application"
  validation {
    condition = var.app != null && length(var.app) > 0
    error_message = "Parameter 'app' is required."
  }
}

variable "env" {
  description = "Runtime environment. Default = blank for global"
  default = ""
  type = string
}

variable "type" {
  type = string
  default = "String"
  validation {
    condition = contains([
      "String",
      "StringList",
      "SecureString"], var.type)
    error_message = "Allowed values for type are \"String\", \"StringList\", or \"SecureString\"."
  }
}
variable "tags" {
  type = map(string)
  default = null
}