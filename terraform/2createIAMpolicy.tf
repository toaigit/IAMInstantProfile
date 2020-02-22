resource "aws_iam_policy" "Toai-S3EC2Policy" {
  name        = "Toai-S3EC2Policy"
  description = "S3 policy created by Toai For Instance Profile"
  policy      = "${file("PolicyS3Bucket.json")}"
}
