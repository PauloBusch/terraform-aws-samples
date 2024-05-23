provider "aws" {
    region = "us-east-1"
    version = "~> 2.46"
}

resource "aws_security_group" "http_server_sg" {
    name = "http_server_sg"
    vpc_id = "vpc-0ca65fbc837be742b"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        name = "http_server_sg"
    }
}
