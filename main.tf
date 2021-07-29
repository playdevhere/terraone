resource "aws_instance" "mymachine" {
  count = terraform.workspace == "dev" ? 1 : 5
  ami = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
  key_name = "june2021"
  tags = {
    Name = "name1"
  }
}

