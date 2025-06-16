output "server_ssh_access" {
  description = "SSH access command for the Jenkins server"
  value       = "${var.ssh_user}@${aws_instance.jenkins_server.public_ip}"
}

output "public_ip" {
  description = "Public IP of the Jenkins server"
  value       = aws_instance.jenkins_server.public_ip
}

output "private_ip" {
  description = "Private IP of the Jenkins server"
  value       = aws_instance.jenkins_server.private_ip
}
output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.corporateproject_ec2.id
}
