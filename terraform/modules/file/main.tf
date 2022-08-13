resource "null_resource" "file_copy" {
    connection {
        type = "ssh"
        user = var.ec2_username
        agent = false 
        host = var.instance_public_ip
        private_key = file("pemkeys/march-2022.pem")
    }

    provisioner "file" {
        source = "config/install.sh"
        destination = "/home/ubuntu/install.sh"
    }
}