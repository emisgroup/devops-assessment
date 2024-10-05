terraform {
    required_version = ">= 1.8.0"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.10.0"
        }
    }

    backend "s3" {
        bucket         = "emis-terraform-state-bucket-1234"
        key            = "envs/dev/terraform.tfstate"
        region         = "eu-west-2"
        encrypt        = true
        dynamodb_table = "terraform-state-locking"
    }
}
