variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = "string"
  default     = "ami-08d4ac5b634553e16"
}

variable "instance_type" {
  description = "The type of instance to provision"
  type        = "string"
  default     = "t2.micro"
}

variable "user_data" {
  description = "The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user_data_base64 instead."
  type        = "string"
  default     = "null"
}

variable "user_data_base64" {
  description = "Can be used instead of user_data to pass base64-encoded binary data directly. Use this instead of user_data whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption."
  type        = "string"
  default     = "null"
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  type        = "string"
  default     = "subnet-09a1393601e2aaddf"
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = "string"
  default     = "ec2-keypair"
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized"
  type        = "string"
  default     = false
}

variable "ebs_volume_type" {
  description = "Type of EBS volume to use for the root EBS block device"
  type        = "string"
  default     = "gp2"
}

variable "ebs_volume_size" {
  description = "Size (in GB) of EBS volume to use for the root EBS block device"
  type        = "string"
  default     = "100"
}

variable "root_block_device" {
  description = "Customize details about the root block device of the instance. See Block Devices (https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#ebs-ephemeral-and-root-block-devices) for details"
  type        = "list"
  default     = []
}

variable "region" {
  default = "us-east-1"
}
