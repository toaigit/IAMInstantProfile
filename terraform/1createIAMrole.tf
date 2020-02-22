resource "aws_iam_role" "Toai-S3EC2Role" {
  name               = "Toai-S3EC2Role"
  assume_role_policy = "${file("AssumeRolePolicy.json")}"
  tags = {
    Creator = "Toai Vo"
    Description = "For IAM Assume Instance Role"
  }
}
