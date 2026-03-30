output "public_ip" {
    value = aws_instance.my-instance1.public_ip
   
}
output "instance_id" {
    value = aws_instance.my-instance1.id
   
}
output "private_ip" {
    value = aws_instance.my-instance1.private_ip
   
}
output "security_group" {
    value = aws_security_group.my-security-group.id
  
}