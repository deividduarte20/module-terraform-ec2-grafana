resource "aws_instance" "web" {
  ami                    = var.inst_ami
  instance_type          = var.inst_type
  key_name               = var.inst_key
  vpc_security_group_ids = [aws_security_group.sg-tf.id]
  user_data              = file("grafana.sh")

  tags = {
    Name = "DevOps"
  }
}