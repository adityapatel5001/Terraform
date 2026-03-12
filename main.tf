provider "aws" {
  region = "us-east-2"
}

resource "aws_ec2_tag" "jenkins_tag" {
  resource_id = "i-0889a7d6d1ba42973"

  key   = "Name"
  value = "Jenkins_Test_Tag"
}