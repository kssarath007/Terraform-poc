data "azurerm_virtual_network" "vnet" {
  name                = "cloud_internal-vnet"
  resource_group_name = "cloud_internal"
}
data "azurerm_subnet" "appsubnet" {
  name                 = "scb-nacha-preprd-SN"
  virtual_network_name = "cloud_internal-vnet"
  resource_group_name  = "cloud_internal"
}

## Same storage used for SFTP as well

