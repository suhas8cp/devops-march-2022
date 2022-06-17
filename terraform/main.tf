resource "aws_instance" "my_instance1" {
    ami = var.my_ami
    instance_type = var.my_instance_type
    tags = {
        Name = "terraform-instance1"
    }
}