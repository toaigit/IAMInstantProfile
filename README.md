#    How to Grant an iAM Role for an EC2 Intance
- Using AWS CLI
  - Update the EC2-Permissions.json file with appropriate permissions.
  - Run the IAMProfile.sh script to create the IAM Profile Role called EC2-Instance-Profile
- Using terraform (recommended way)
    - Instead of using aws cli, you can use terraform.  All terraform files are under terraform folder.
    - Go to terraform folder, just run the terraform apply to create the IAM Profile Instance
- You then add the following line in the your EC2 terraform Launch Configuration:   
```
In the vars.tf file add the following lines to define the iamrole variable.

variable "iamrole" {   
  default = "EC2-Instance-Profile"   
}   
  
In the main.tf file add the iam_instance_profile line in the launch configuration section.

    iam_instance_profile        = "${var.iamrole}"   OR
    iam_instance_profile        = "EC2-Instance-Profile"   
```
