resource "aws_instance" "platform_server" {

  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  subnet_id = aws_subnet.public_subnet.id

  vpc_security_group_ids = [
    aws_security_group.platform_sg.id
  ]

  key_name = var.key_name

  associate_public_ip_address = true

  user_data = file("${path.module}/userdata.sh")

  depends_on = [
    aws_internet_gateway.igw,
    aws_route_table_association.public_assoc
  ]

  tags = {
    Name = "platform-engineering-server"
  }
}
