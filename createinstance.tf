provider = "aws" {
    region = "eu-central-1a"
}

resource = "aws_instance" "MyFirstInstance" {
    ami = "ami-09042b2f6d07d164a"
    instance_type = "t2.micro"
}