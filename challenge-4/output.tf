data "aws_iam_users" "users" {
    
}

output "username" {
    value = data.aws_iam_users.users.names
}