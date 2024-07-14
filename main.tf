provider "aws" {
  region = "me-south-1" # Change to your desired region
}


resource "aws_instance" "web" {
  ami           = "ami-087f3ec3fdda67295"
  instance_type = "t3.micro"

  tags = {
    Name = "Kashif"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}