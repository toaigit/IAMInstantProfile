#    How to Grant an iAM Role for an EC2 Intance
- Update the E2_Permissions file with appropriate
- Run the IAMProfile.sh script to create the IAM Profile Role called EC2-Instance-Profile
```
You then add the following line in the terraform Launch Configuration:   
```
In the vars.tf file add the following lines to define the iamrole variable.

variable "iamrole" {   
  default = "EC2-Instance-Profile"   
}   
  
In the main.tf file add the iam_instance_profile line in the launch configuration section.

    iam_instance_profile        = "${var.iamrole}"   OR
    iam_instance_profile        = "EC2-Instance-Profile"   
```
