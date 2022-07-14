resource "aws_instance" "this" {
  # count = var.instance_count
  #count                  = "${var.subnet_id != null ? 1 : 0}"
  ami = "${var.ami}"

  instance_type = "${var.instance_type}"

  #user_data_base64       = "${var.user_data_base64}"
  subnet_id              = "${var.subnet_id}"
  key_name               = "${var.key_name}"
  vpc_security_group_ids = ["sg-013546b7eb9f4686b"]
  ebs_optimized          = "${var.ebs_optimized}"
}