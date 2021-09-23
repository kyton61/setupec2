resource "aws_iam_instance_profile" "bastion_profile" {
    name = "bastion_profile"
    role = aws_iam_role.bastion_role.name
}

resource "aws_iam_role" "bastion_role" {
    name = "bastion_role"
    assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "bastion_attach" {
    role = aws_iam_role.bastion_role.id
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
