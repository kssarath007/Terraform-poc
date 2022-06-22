# NIC
resource "azurerm_network_interface" "appvm1nic" {
  name                      = "${var.appvm1_hostname}-nic"
  location                  = var.location
  resource_group_name       = azurerm_resource_group.rg.name

  ip_configuration {
   name                      = "ipconfig1"
   subnet_id                 = data.azurerm_subnet.appsubnet.id
   private_ip_address_allocation = "Static"
   private_ip_address            = var.appvm1_ipaddress
  }
  tags = var.tags
}
# VM

resource "azurerm_virtual_machine" "appvm1" {
  name                  = var.appvm1_hostname
  location              = var.location
  resource_group_name   = var.azurerm_resource_group
  network_interface_ids = [azurerm_network_interface.appvm1nic.id]
  vm_size               = var.appvm1_size
  zones = [3]
   storage_image_reference {
    id = var.Redhat8v2_source_image_id
   }
   storage_os_disk {
    name              = "${var.appvm1_hostname}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = var.appvm1_hostname
    admin_username = var.admin_username
    
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys  {
	    path     = "/home/scbnpreprdadmin/.ssh/authorized_keys"
        key_data = var.ansiblepublickey
      }
  }	  
  tags = var.tags
}  


###########################################################
# NIC
resource "azurerm_network_interface" "appvm2nic" {
  name                      = "${var.appvm2_hostname}-nic"
  location                  = var.location
  resource_group_name       = azurerm_resource_group.rg.name

  ip_configuration {
   name                      = "ipconfig1"
   subnet_id                 = data.azurerm_subnet.appsubnet.id
   private_ip_address_allocation = "Static"
   private_ip_address            = var.appvm2_ipaddress
  }
  tags = var.tags
}
# VM
resource "azurerm_virtual_machine" "appvm2" {
  name                  = var.appvm2_hostname
  location              = var.location
  resource_group_name   = var.azurerm_resource_group
  network_interface_ids = [azurerm_network_interface.appvm2nic.id]
  vm_size               = var.appvm1_size
  zones = [3]

   storage_image_reference {
    id = var.Redhat8v2_source_image_id
   }
   storage_os_disk {
    name              = "${var.appvm2_hostname}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = var.appvm2_hostname
    admin_username = var.admin_username
    
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys  {
	    path     = "/home/scbnpreprdadmin/.ssh/authorized_keys"
        key_data = var.ansiblepublickey
      }
  }	  
  tags = var.tags
}

# NIC
resource "azurerm_network_interface" "appvm3nic" {
  name                      = "${var.appvm3_hostname}-nic"
  location                  = var.location
  resource_group_name       = azurerm_resource_group.rg.name

  ip_configuration {
   name                      = "ipconfig1"
   subnet_id                 = data.azurerm_subnet.appsubnet.id
   private_ip_address_allocation = "Static"
   private_ip_address            = var.appvm3_ipaddress
  }
  tags = var.tags
}
# VM

resource "azurerm_virtual_machine" "appvm3" {
  name                  = var.appvm3_hostname
  location              = var.location
  resource_group_name   = var.azurerm_resource_group
  network_interface_ids = [azurerm_network_interface.appvm3nic.id]
  vm_size               = var.appvm3_size
  zones = [3]

   storage_image_reference {
    id = var.Redhat8v2_source_image_id
   }
   storage_os_disk {
    name              = "${var.appvm3_hostname}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = var.appvm3_hostname
    admin_username = var.admin_username
    
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys  {
	    path     = "/home/scbnpreprdadmin/.ssh/authorized_keys"
        key_data = var.ansiblepublickey
      }
  }	  
 
  tags = var.tags
}


###########################################################
# NIC
resource "azurerm_network_interface" "appvm4nic" {
  name                      = "${var.appvm4_hostname}-nic"
  location                  = var.location
  resource_group_name       = azurerm_resource_group.rg.name

  ip_configuration {
   name                      = "ipconfig1"
   subnet_id                 = data.azurerm_subnet.appsubnet.id
   private_ip_address_allocation = "Static"
   private_ip_address            = var.appvm4_ipaddress
  }
  tags = var.tags
}
# VM
resource "azurerm_virtual_machine" "appvm4" {
  name                  = var.appvm4_hostname
  location              = var.location
  resource_group_name   = var.azurerm_resource_group
  network_interface_ids = [azurerm_network_interface.appvm4nic.id]
  vm_size               = var.appvm4_size
  zones = [3]

   storage_image_reference {
    id = var.Redhat8v2_source_image_id
   }
   storage_os_disk {
    name              = "${var.appvm4_hostname}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = var.appvm4_hostname
    admin_username = var.admin_username
    
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys  {
	    path     = "/home/scbnpreprdadmin/.ssh/authorized_keys"
        key_data = var.ansiblepublickey
      }
  }	  
 
  tags = var.tags
}

# NIC
resource "azurerm_network_interface" "appvm5nic" {
  name                      = "${var.appvm5_hostname}-nic"
  location                  = var.location
  resource_group_name       = azurerm_resource_group.rg.name

  ip_configuration {
   name                      = "ipconfig1"
   subnet_id                 = data.azurerm_subnet.appsubnet.id
   private_ip_address_allocation = "Static"
   private_ip_address            = var.appvm5_ipaddress
  }
  tags = var.tags
}
# VM

resource "azurerm_virtual_machine" "appvm5" {
  name                  = var.appvm5_hostname
  location              = var.location
  resource_group_name   = var.azurerm_resource_group
  network_interface_ids = [azurerm_network_interface.appvm5nic.id]
  vm_size               = var.appvm5_size
  zones = [3]

   storage_image_reference {
    id = var.Redhat8v2_source_image_id
   }
   storage_os_disk {
    name              = "${var.appvm5_hostname}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = var.appvm5_hostname
    admin_username = var.admin_username
    
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys  {
	    path     = "/home/scbnpreprdadmin/.ssh/authorized_keys"
        key_data = var.ansiblepublickey
      }
  }	  

  tags = var.tags
}



###########################################################
# NIC
resource "azurerm_network_interface" "appvm6nic" {
  name                      = "${var.appvm6_hostname}-nic"
  location                  = var.location
  resource_group_name       = azurerm_resource_group.rg.name

  ip_configuration {
   name                      = "ipconfig1"
   subnet_id                 = data.azurerm_subnet.appsubnet.id
   private_ip_address_allocation = "Static"
   private_ip_address            = var.appvm6_ipaddress
  }
  tags = var.tags
}
# VM
resource "azurerm_virtual_machine" "appvm6" {
  name                  = var.appvm6_hostname
  location              = var.location
  resource_group_name   = var.azurerm_resource_group
  network_interface_ids = [azurerm_network_interface.appvm6nic.id]
  vm_size               = var.appvm6_size
  zones = [3]

   storage_image_reference {
    id = var.Redhat8v2_source_image_id
   }
   storage_os_disk {
    name              = "${var.appvm6_hostname}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = var.appvm6_hostname
    admin_username = var.admin_username
    
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys  {
	    path     = "/home/scbnpreprdadmin/.ssh/authorized_keys"
        key_data = var.ansiblepublickey
      }
  }	  

  tags = var.tags
}