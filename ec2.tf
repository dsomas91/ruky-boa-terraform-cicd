resource "aws_instance" "example" {
  ami           = var.my-os-image
  instance_type = var.machine_size
 
  tags = {
    Name = var.vm_name
  }
}