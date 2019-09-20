resource "azurerm_virtual_machine" "main" {
  name                  = "${var.prefix}-vm"
  location              = var.location
  resource_group_name   = var.name
  network_interface_ids = [var.netid]
  vm_size               = "Standard_DS2_v2"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = var.os_disk_name
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
    disk_size_gb = 30
  }
  storage_data_disk {
    create_option = "Empty"
    lun = 0
    name = var.data_disk_name
    disk_size_gb = 50
  }
  os_profile {
    computer_name  = var.os_comp_name
    admin_username = var.admin_uname
    admin_password = var.admin_pwd
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = var.environ
  }
}