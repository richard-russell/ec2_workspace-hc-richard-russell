# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
  default_tags {
    tags = local.default_tags
  }
}
# Configure the Random Provider
provider "random" {}
