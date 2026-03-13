provider "aws" {
  region = "us-east-2"
}



module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "instance_one"

  instance_type = "t3.micro"
  key_name      = "my-key-pair"
  subnet_id     = "subnet-0c900516d8719d873"

  tags = {
    autorestart = "true"

  }
}