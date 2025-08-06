provider "aviatrix" {
  controller_ip = var.controller_ip
  username      = var.username
  password      = var.password
}

provider "aws" {
  alias  = "ohio"
  region = var.aws_spoke1_region
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"
  subscription_id            = var.azure_subscription_id
  client_id                  = var.azure_client_id
  client_secret              = var.azure_client_secret
  tenant_id                  = var.azure_tenant_id
}

data "aws_vpc" "transit_vpc" {
  id = "vpc-0a80b600f7c012089"
}

data "aws_vpc" "spoke_vpc" {
  id = "vpc-0eaf7fbd76456f319"
}

data "aws_subnet" "spoke_subnet" {
  id = "subnet-050e05b8f6dcfed9f"
}


