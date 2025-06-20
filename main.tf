# Create an EC2 Instance
resource "aws_instance" "ec2_workspace" {
  ami           = data.aws_ami.ubuntu20.id
  instance_type = var.instance_type
  tags = {
    Name = "tops-beetle-instance"
  }
}

# Create a random pet
resource "random_pet" "random" {}

# Data Source to get the latest Ubuntu 20.04 AMI
data "aws_ami" "ubuntu20" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}

resource "aws_s3_bucket" "imported_bucket" {
  bucket              = "curious-tortoise-bucket"
  bucket_prefix       = null
  force_destroy       = false
  object_lock_enabled = false
  region              = "us-west-2"
  tags = {
    owner = "hc-richard-russell"
  }
  tags_all = {
    customer = "hashicat-inc"
    owner    = "hc-richard-russell"
  }
}
