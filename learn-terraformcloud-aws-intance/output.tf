output "instance-ip-address" {
    description = "This is the IP address of the instance"
    value = aws_instance.app_server.public_ip
}

output "instance-tags" {
    description = "The instance tags we set, including the date"
    value = aws_instance.app_server.tags
}

output "instance-id" {
    description = "The instance ID"
    value = aws_instance.app_server.id
}

output "instance-private-id" {
    description = "the internal (VPC) IP address"
    value = aws_instance.app_server.private_ip
}


output "spot-instance-ip-address" {
    description = "This is the IP address of the instance"
    value = aws_spot_instance_request.spot_app_server.public_ip
}

output "spot-instance-tags" {
    description = "The instance tags we set, including the date"
    value = aws_spot_instance_request.spot_app_server.tags
}

output "spot-instance-id" {
    description = "The instance ID"
    value = aws_spot_instance_request.spot_app_server.id
}

output "spot-instance-private-id" {
    description = "the internal (VPC) IP address"
    value = aws_spot_instance_request.spot_app_server.private_ip
}