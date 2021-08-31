provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "/home/gabriel/.aws/credentials"
}

terraform {
  backend "s3" {
    bucket = "terransible"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}

module "server" {
  source          = "./modules/Ec2"
  inst_ami        = "ami-01d025118d8e760db"
  inst_type       = "t2.micro"
  inst_key     = "Gabriel"
  tags = {"Name" = "lab-terraform-tst", "Ambiente" = "Desenvolvimento"}
}