resource "aws_instance" "ec2" {
  ami               = "ami-052652af12b58691f"
  availability_zone = "ap-northeast-1a"
  instance_type     = "t2.micro"
  monitoring        = "false"
  key_name          = "my-key"
  #vpc_security_group_ids      = aws_security_group.bastion_sg.id
  security_groups             = ["${aws_security_group.bastion_sg.id}"]
  subnet_id                   = aws_subnet.public_subnet["ap-northeast-1a"].id
  associate_public_ip_address = true

  root_block_device {
    volume_type           = "gp2"
    volume_size           = "8"
    delete_on_termination = true
  }
  tags = {
    Name    = "${terraform.workspace}-${local.project_name}-bastion"
    Env     = "${terraform.workspace}"
    Project = local.project_name
  }
}
