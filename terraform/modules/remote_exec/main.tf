resource "null_resource" "file_copy" {
    connection {
        type = "ssh"
        user = var.ec2_username
        agent = false 
        host = var.instance_public_ip
        private_key = file("pemkeys/march-2022.pem")
    }

    provisioner "remote-exec" {
        inline = [
            "pwd",
            "chmod +x /home/ubuntu/install.sh",
            "sudo bash /home/ubuntu/install.sh",
            "echo The remote_exec script execution completed"
        ] 
    }
}