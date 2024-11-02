# variable "password" {
#     default = "supersecret"
#     sensitive = "true"
# }

# resource "local_file" "foo" {
#     content = var.password
#     filename = "password.txt"
# }


resource "local_sensitive_file" "foo" {
    content = "supersecret"
    filename = "password.txt"
}

output "pass" {
    value = local_sensitive_file.foo.content 
    sensitive = "true"
}

#the plan will fail if we try to output the sensitive so we can use 
#sensitive = true and the plan will pass
