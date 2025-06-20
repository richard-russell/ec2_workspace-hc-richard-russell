  terraform {
  backend "remote" {
    organization = "your-org"
    workspaces {
      name = "ec2-workspace"
    }
  }
}
