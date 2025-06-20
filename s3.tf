# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "curious-tortoise-bucket"
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
