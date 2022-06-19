module "create_s3_backend" {
    source = "./modules/create_s3"
    bucket_name = var.root_bucket_name 
}

module "create_dynamo_locking" {
    source = "./modules/create_dynamodb"
    hash_key = var.root_has_key
    dynamodb_name = var.root_locking_table
}

module "create_ec2" {
    source = "./modules/create_ec2"
    my_ami = "ami-006d3995d3a6b963b"
    my_instance_type = "t2.micro"
    pem_key_name = "march-2022"
}

module "file_copy" {
    source = "./modules/file"
    ec2_username = "ubuntu"
    instance_public_ip = module.create_ec2.instance_public_ip
}

module "ec2_local_exec" {
    source = "./modules/local_exec"
    instance_public_ip = module.create_ec2.instance_public_ip
}

module "ec2_remote_exec" {
    source = "./modules/remote_exec"
    ec2_username = "ubuntu"
    instance_public_ip = module.create_ec2.instance_public_ip
}

