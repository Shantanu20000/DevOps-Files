provider "aws" {
    region = "ap-south-1"
    secret_key = "qwsde324qasxd"
    access_key = "qsicoe3342qws"
}
resource "aws_instance" "nginx" {
    ami = "ami-3wur4jf9w3u534rj39u2jfw"
    instance_type = "t2.micro"
    user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install nginx -y
              systemctl start nginx
              systemctl enable nginx
              EOF
}

