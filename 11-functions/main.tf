variable "class" {
  default = "devops"
}

## Print the same in capital letters
output "class" {
  value = upper(var.class)
}

variable "fruits" {
  default = ["apple", "banana", "orange"]
}

output "fruit_count" {
value = length(var.fruits)
}