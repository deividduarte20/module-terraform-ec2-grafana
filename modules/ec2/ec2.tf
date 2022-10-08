resource "aws_instance" "web" {
  ami                    = var.inst_ami
  instance_type          = var.inst_type
  key_name               = var.inst_key
  user_data              = file("modules/ec2/grafana.sh")

  tags = {
    Name = "DevOps"
  }
}