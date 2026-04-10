provider "aws" {
  region = var.region
}

resource "aws_instance" "jenkins_server" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  tags = {
    Name = "jenkins-server"
  }
}
