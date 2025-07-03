resource "aws_key_pair" "openvpn" {
    key_name = "openvpn"
    public_key = file("C:\\Users\\HP\\Devops\\daws-84s\\openvpn.pub")
}


resource "aws_instance" "openvpn" {
  ami           = "ami-06e5a963b2dadea6f"
  #ami = data.aws_ami.openvpn.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [local.vpn_sg_id]
  subnet_id = local.public_subnet_id
  #key_name = "daws-84s" # make sure this key exist in AWS -- id you have already keypair created
  key_name = aws_key_pair.openvpn.key_name
  user_data = file("openvpn.sh")


  tags = merge(
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}-vpn"
    }
  )
}

resource "aws_route53_record" "openvpn" {
  zone_id = var.zone_id
  name    = "openvpn-${var.environment}.${var.zone_name}" #openvpn-dev.sivadevops.fun 
  type    = "A"
  ttl     = 1
  records = [aws_instance.openvpn.public_ip]
  allow_overwrite = true
}