terraform {
  required_version = ">= 1.1.0"
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "netOps_Guru_Test"
    workspaces {
      name = "ace-iac-day-zero"
    }
  }
}
