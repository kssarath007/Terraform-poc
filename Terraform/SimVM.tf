###########################################################
# NIC
resource "azurerm_network_interface" "simvm1nic" {
  name                      = "${var.simvm1_hostname}-nic"
  location                  = var.location
  resource_group_name       = azurerm_resource_group.rg.name

  ip_configuration {
   name                      = "ipconfig1"
   subnet_id                 = data.azurerm_subnet.appsubnet.id
   private_ip_address_allocation = "Static"
   private_ip_address            = var.simvm1_ipaddress
  }
  tags = var.tags
}
# VM
resource "azurerm_virtual_machine" "simvm1" {
  name                  = var.simvm1_hostname
  location              = var.location
  resource_group_name   = var.azurerm_resource_group
  network_interface_ids = [azurerm_network_interface.simvm1nic.id]
  vm_size               = var.simvm1_size
  zones = [3]

   storage_image_reference {
    id = var.Redhat8v2_source_image_id
   }
   storage_os_disk {
    name              = "${var.simvm1_hostname}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = var.simvm1_hostname
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

 

