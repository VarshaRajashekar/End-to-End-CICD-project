resource "aws_instance" "jenkins_server" {

  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = "terraform-key"

  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]

  tags = {
    Name = "Jenkins-Server"
  }
}
