output "ami_id" {
    description = "This is the K8S ami ID ....."
    value = data.aws_ami.my_ubuntu.id
}

output "owner" {
    description = "This is the K8S ami OWNER ....."
    value = data.aws_ami.my_ubuntu.owner_id
}

output "check_public" {
    description = "This is the K8S ami OWNER ....."
    value = data.aws_ami.my_ubuntu.public
}

output "instance_public_ip" {
    description = "This is the K8S ami OWNER ....."
    value = resource.aws_instance.my_instance1.public_ip
}