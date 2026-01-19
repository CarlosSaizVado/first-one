provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  tenant_id       = var.tenant_id
  subscription_id = var.az_subscription_id
}

module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "storage_account" {
  source                  = "./modules/storage_account"
  storage_account_name    = "storage${random_integer.suffix.result}"
  resource_group_name     = module.resource_group.resource_group_name
  location                = module.resource_group.location
}

module "network" {
  source              = "./modules/network"
  vnet_name           = "vnet"
  subnet_name         = "subnet"
  resource_group_name = module.resource_group.resource_group_name
}

module "virtual_machine" {
  source              = "./modules/virtual_machine"
  vm_name             = var.vm_name
  resource_group_name = module.resource_group.resource_group_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}