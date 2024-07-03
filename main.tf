resource "aws_instance" "web" {
  ami           = "ami-087f3ec3fdda67295"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
