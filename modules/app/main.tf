resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "var.instance_type"
  vpc_security_group_ids = [data.aws_security_group.selected.id]

  tags = {
    Name = var.component
  }
}

resource "null_resource" "ansible" {
  provisioner "remote-exec" {
    connection {
      type = var.ssh_user
      user = var.ssh_pass
      password = "DevOps321"
      host = aws_instance.instance.public_ip
    }
    inline = [
      "sudo pip.11 install ansible",
      "ansible-playbook -i localhost, -u https://github.com/donthi123/expense-ansible expense.yml -e env=${var.env} -e role_name=${var.component}"
    ]
  }

}

resource "aws_route53_record" "record" {
  name    = "${var.component}-${var.env}"
  type    = "A"
  zone_id = "var.zone_id"
  records = [aws_instance.instance.private_ip]
  ttl = 30
}