output "op-name"{
    value = aws_instance.web[*].tags.Name
}

output "op-name2"{
    value = {for k, v in var.bucket_names : k=>v}
}