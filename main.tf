provider "azurerm" {}

variable "prefix" {
  default = "mon"
}

resource "azurerm_resource_group" "tf-rg" {
  name     = "${var.prefix}"
  location = "West Europe"
}

resource "azurerm_virtual_network" "MyResource" {
  name                = "virtualNetwork1${var.prefix}"
  location            = "${azurerm_resource_group.tf-rg.location}"
  resource_group_name = "${azurerm_resource_group.MyResource.name}"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4"]
}
