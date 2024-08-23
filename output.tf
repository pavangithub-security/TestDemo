# Output block  --> To print output values 

output "ec2_public_Ip" {
  #value = [for instance in aws_instance.ec2_demo : instance.public_ip]

  #description = "ec2_public IP Address"

  value = aws_instance.ec2_demo.public_ip
}

output "ec2_private_Ip" {
  # value       = [for instance in aws_instance.ec2_demo : instance.private_ip]
  #description = "ec2_private IP Address"

  value = aws_instance.ec2_demo.private_ip
}