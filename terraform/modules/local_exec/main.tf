resource "null_resource" "file_copy" {
    provisioner "local-exec" {
        command = "echo ${var.instance_public_ip} >> config/ec2_ip.txt"
    }
}