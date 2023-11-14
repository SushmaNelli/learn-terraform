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

variable "classes" {
  default = {
    devops = {
      name   = "devops"
      topics = ["jenkins", "docker"]
    }
    aws = {
      name = "aws"
    }
  }
}

output "devops_topics" {
  value = var.classes["devops"]["topics"]
}

#output "aws_topics" {
#  value = lookup(lookup(var.classes, "aws", null), "topics", "No Topics so far")
#}

#output "course_topics" {
#  value = lookup(lookup(var.classes, "aws", null), "topics", null) == null ? " no AWS Training so far" ; lookup(lookup(var.classes, "aws", null), "topics", null)
#}

output "fruit_4" {
  value = element(var.fruits, 4)
}

variable "a" {
  default = 100
}

output "a" {
  value = var.a > 150 ? "Surplus Quantity" : "Less Quantity"
}