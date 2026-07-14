resource "aws_s3_bucket" "terraform_state" {

  bucket = "sahil-terraform-state-548065570271"

  tags = {
    Name = "Terraform Remote State"
  }
}
