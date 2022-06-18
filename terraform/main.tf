module "create_s3_backend" {
    source = "./modules/create_s3"
    bucket_name = var.root_bucket_name 
}

module "create_dynamo_locking" {
    source = "./modules/create_dynamodb"
    hash_key = var.root_has_key
    dynamodb_name = var.root_locking_table
}