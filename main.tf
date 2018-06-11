provider "azurerm" {}

variable "prefix" {
  default = "mon"
}

resource "azurerm_resource_group" "tf-rg" {
<<<<<<< HEAD
  name     = "rg${var.prefix}"
  location = "West US"
=======
   name = "rg${var.prefix}"
   location = "West EU"
>>>>>>> 0e97c6700a4796679d6018d111c944b21e3e0694
}

resource "azurerm_virtual_network" "MyResource" {
  name                = "virtualNetwork1${var.prefix}"
  location            = "${azurerm_resource_group.tf-rg.location}"
  resource_group_name = "${azurerm_resource_group.MyResource.name}"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4"]
}
<<<<<<< HEAD
=======

tf-azurerm
>>>>>>> 0e97c6700a4796679d6018d111c944b21e3e0694
