variable "my-list" {
  type = list(any)
}

output "variable_value" {
  value = var.my-list
}