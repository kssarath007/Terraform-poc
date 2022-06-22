resource "azurerm_network_security_group" "appnsg" {
  name                = "scbn-preprd-nsg"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tags = var.tags
 } 

resource "azurerm_network_security_rule" "nsgappdeny" {
  name                       = "denyall"
  priority                   = 1000
  direction                  = "Inbound"
  access                     = "Deny"
  protocol                   = "*"
  source_port_range          = "*"
  destination_port_range     = "*"
  source_address_prefix      = "*"
  destination_address_prefix = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.appnsg.name
}

resource "azurerm_network_security_rule" "VolPay-Ports" {
  name                       = "VolPay-Ports"
  priority                   = 890
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = 8443
  source_address_prefixes      = ["10.50.0.0/16"]
  destination_address_prefix = "10.177.16.0/27"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.appnsg.name
}

resource "azurerm_network_security_rule" "ActiveMQ-ports" {
  name                       = "ActiveMQ-ports"
  priority                   = 900
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_ranges     = [61616, 8161]
  source_address_prefixes      = ["10.50.0.0/16"]
  destination_address_prefix = "10.177.16.0/27"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.appnsg.name
}


resource "azurerm_network_security_rule" "teleportapp" {
  name                       = "teleport"
  priority                   = 950
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = 22
  #source_address_prefix      = "10.162.184.20"
  source_address_prefixes     = ["10.50.0.0/16"]
  destination_address_prefix = "10.177.0.0/16"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.appnsg.name
}

resource "azurerm_network_security_rule" "AllowLB-Rule" {
  name                       = "AllowLB-Rule"
  priority                   = 995
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "*"
  source_port_range          = "*"
  destination_port_range     = "*"
  source_address_prefix      = "AzureLoadBalancer"
  destination_address_prefix = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.appnsg.name
}

##############################################################################

# Connect the security group to the subnet
resource "azurerm_subnet_network_security_group_association" "nsgappsubnet" {
  subnet_id                 = data.azurerm_subnet.appsubnet.id
  network_security_group_id = azurerm_network_security_group.appnsg.id
}
