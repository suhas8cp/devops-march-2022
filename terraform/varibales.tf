variable "root_bucket_name" {
    type = string
    default = "my-first-backend-bucket-767645356656"
}

variable "root_has_key" {
    type = string
    default = "LockID"
}

variable "root_locking_table" {
    type = string
    default = "my_dynamobd_locking_table"
}

variable "my_ami" {
    type = string
    default = "ami-068257025f72f470d"
}

variable "my_instance_type" {
    type = string
    default = "t2.micro"
}