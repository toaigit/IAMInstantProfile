#    How to Grant an iAM Role to an EC2 Intance
Create a Role Name myEC2FullRole with permission of AmazonEC2FullAccess  
Write down the Role ARN you just created   
  For Example: arn:aws:iam::306784208358:role/myEC2FullRole   
IAM --> Users --> Select the User   
Click Add inline policy (+ sign at the bottom right corner)   
Enter the following lines in the JSON Tab   
...   
{   
    "Version": "2012-10-17",   
    "Statement": [    
        {    
            "Effect": "Allow",   
            "Action": "iam:*",   
            "Resource": "arn:aws:iam::306784208358:role/myEC2FullRole"   
        }   
    ]   
}   
...
You then add the following line in the terraform Launch Configuration:   
... 
variable "iamrole" {   
  default = "myEC2FullRole"   
}   
  
    iam_instance_profile        = "${var.iamrole}"   
... 
