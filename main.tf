resource "aws_instance" "webserver" {
  ami             = "ami-06a0cd9728546d178"
  instance_type   = "t2.micro"
  key_name        = "utc-key"
  security_groups = ["webserver-sg"]
  user_data       = file("input.sh")
  tags = {
    name       = "utc-dev-inst"
    team       = "cloud transformation"
    env        = "dev"
    created_by = "Jollofpapi"
  }

}
