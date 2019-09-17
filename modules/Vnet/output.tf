output "network_interface_id" {
  value = azurerm_network_interface.main.id
}
output "public_ip" {
  value = azurerm_public_ip.test.id
}