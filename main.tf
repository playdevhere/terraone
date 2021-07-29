resource "aws_instance" "mymachine" {
  count = terraform.workspace == "dev" ? 1 : 5
  ami = var.ami
  instance_type = var.type
  key_name = "june2021"
  tags = {
    Name = var.vmname
  }
}

