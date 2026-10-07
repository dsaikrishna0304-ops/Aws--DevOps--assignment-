resource "aws_s3_bucket" "app_bucket" {
bucket = "saikrishna-devops-app-bucket"
tags = {
Name = "app-bucket"
}
}
resource "aws_s3_bucket" "alb_logs" {
bucket = "saikrishna-alb-logs-bucket"
tags = {
Name = "alb-logs"
}
}