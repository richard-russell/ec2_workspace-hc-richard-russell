locals {
  customer_name = var.customer_name != "" ? substr(var.customer_name, 0, 10) : "hashicat-inc"
  default_tags = {
    owner       = var.ddr_tfc_project_name
    environment = var.env
    customer    = local.customer_name
  }
}
