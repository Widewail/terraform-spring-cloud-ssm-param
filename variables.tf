variable "value" {
  description = "Value of the parameter"
  type = string
}

variable "key" {
  description = "Name of the parameter"
  type = string
}

variable "app" {
  description = "The name of the application this key applies to"
  type = string
  default = "application"
}

variable "env" {
  description = "Runtime environment"
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
  default = {}
}