resource "aws_instance" "example" {
  ami           = var.my-os-image
  instance_type = var.machine_size
key_name = var.private_key_name
#adding sec grouup to ec2 vm
vpc_security_group_ids = [aws_security_group.ruky_security-group.id]
  tags = {
    Name = var.vm_name
  }
}

