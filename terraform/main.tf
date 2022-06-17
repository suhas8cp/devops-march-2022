data "aws_ami" "my_ubuntu" {
    most_recent = true 

    filter {
        name = "name"
        values = ["K8S Master"]
    }

    owners = ["self"]
}

resource "aws_instance" "my_instance1" {
    ami = var.my_ami
    instance_type = var.my_instance_type
    tags = {
        Name = "terraform-instance1"
    }
}