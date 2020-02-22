resource "aws_iam_instance_profile" "Toai-S3EC2Role" {
  name  = "Toai-S3EC2Role"
  role = "${aws_iam_role.Toai-S3EC2Role.name}"
}
