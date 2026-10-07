resource "aws_launch_template" "app_lt" {
name_prefix = "app-launch-template"
image_id = "ami-0f58b397bc5c1f2e8"
instance_type = "t3.micro"
key_name = "devops-key"
vpc_security_group_ids = [
aws_security_group.ec2_sg.id
]
user_data = base64encode(<<-EOF
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>DevOps Assignment Application</h1>" > /var/www/html/index.html
EOF
)
tag_specifications {
resource_type = "instance"
tags = {
Name = "app-instance"
}
}
}