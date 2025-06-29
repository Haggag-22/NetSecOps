resource "aws_instance" "jenkins_server" {
  ami           = "ami-0c55b159cbfafe1f0"  
  instance_type = "t3.micro"
  subnet_id     = module.netsecops_vpc.public_subnets[0]
  user_data = file("install_tools.sh")

  tags = {
    Name = "Jenkins-Server"
  }
}

resource "aws_eip" "jenkins_eip" {
  instance = aws_instance.jenkins_server.id
  vpc      = true
}