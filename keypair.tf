resource "aws_key_pair" "utc-key" {
  key_name   = "utc-key"
  public_key = tls_private_key.utc-key.public_key_openssh
}

resource "tls_private_key" "utc-key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "local_file" "utc-key" {
  filename = "utc2key.pem"
  content  = tls_private_key.utc-key.private_key_pem
}