resource "aws_instance" "server" {
    ami = var.my_ami
    instance_type = var.my_instance_type
    key_name = var.pem_key_name
    vpc_security_group_ids = ["${aws_security_group.sg.id}"]
    tags = {
        Name = "provisioner"
    }
}

resource "aws_security_group" "sg" {
    name = "sg1"
    description = "Allow ssh"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp" 
        cidr_blocks =  ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp" 
        cidr_blocks =  ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1" 
        cidr_blocks =  ["0.0.0.0/0"]
    }
}