resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-05dd1af44c0cbb001"

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = "sg-084ca0331c18d19e1"
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 4443
  ip_protocol       = "tcp"
  to_port           = 4443
}
