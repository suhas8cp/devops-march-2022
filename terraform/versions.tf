terraform {
    required_version = ">=0.12"

    required_providers {
        aws = {
            version = ">=2.7.0"
        }
    }

    backend "s3" {
        bucket = "my-first-backend-bucket-767645356656"
        key = "backend/terraform.tfstate"
        region = "ap-south-1"
        dynamodb_table = "my_dynamobd_locking_table"
        encrypt = true
    }
}