output "ami_id" {
    description = "This is the K8S ami ID ....."
    value = data.aws_ami.my_ubuntu.id
}