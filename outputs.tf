output "instance_private_ip" {
  description = "The private IP address of the EC2 instance"
  value       = aws_instance.web-app2.private_ip
}

output "network_acl" {
  description = "The network ACL to display: "
  value       = aws_vpc.Devops-vpc.default_network_acl_id
}