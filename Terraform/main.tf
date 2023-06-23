provider "azurerm" {
  features {}
}

resource "azurerm_public_ip" "public_ip" {
  name                    = "mypublicip"
  location                = "francecentral"
  resource_group_name     = "ADDA84-CTP"
  allocation_method       = "Dynamic"
}

resource "azurerm_network_interface" "nic" {
  name                      = "mynic"
  location                  = "francecentral"
  resource_group_name       = "ADDA84-CTP"

  ip_configuration {
    name                          = "myipconfig"
    subnet_id                     = "/subscriptions/765266c6-9a23-4638-af32-dd1e32613047/resourceGroups/ADDA84-CTP/providers/Microsoft.Network/virtualNetworks/network-tp4/subnets/internal"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
  }
}

resource "azurerm_virtual_machine" "vm" {
  name                  = "devops-20190389"
  location              = "francecentral"
  resource_group_name   = "ADDA84-CTP"
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = "Standard_D2s_v3"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "disk"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "myvm"
    admin_username = "devops"
  }

  os_profile_linux_config {
    disable_password_authentication = true

    ssh_keys {
      path     = "/home/devops/.ssh/authorized_keys"
      key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQD3z5YprTfLL6dzuqeLMT3nfGV1P6hx0bSORNRsD3jiZO+hC8WW/fCEs7SHHivQB0dNTbDA1eG/8WqZAFq+EUH2jLoZaULJmOe0Hfd4EzrRTJNgluM40Vupn7lSD2DE7cXLd7cKjwAbRUwjEQSgSWU5YcRtwwK+XjT/2yyRnGWKHw0eDM2QhiMMHCazJfK5HzwubqBsMZG9qozlbwzGDo1c2pBLL/mebomAFHv18RK3Jpw+53CsXjdc7EgfzDB3zmYFdO3+7fI2+e1lSymgfq1Oqc+lk0P1rh3zjspWNpEhko5gb460kIsF2QT3Tg7J5/MnEJ3m/agQnW4jOKzoc6wD83Ka/vkHrhF4tG/62QrNOfT+oSldTnQ8ccnLFlxXVTtsDuSPRlWo5NmxDprbNWqoUvweJ1GPgyeYsYSL9z4SnjsyTMjKHkf3YfVa/fUQSOvEyAah8VfSQ22Bfph3BsAng+/wtCtPfPl4z1GbQgoTGXUjVCLLVrwQypyvj8m2EBzOAvvjqt01uJUWkNcxSu6Ed5tCDnwwrt4WFiVZo7dGgETrHV/h75fnj02c2aB2TyXpA1SjHJlvcHTqTXrfwODZAcxs+MtdEnaoAxyok9QNRI9Ohzez4VKfBhicnbXkaY+UCmp7vP/jyfqJl8cZTAXnU9ljizm+xpso7j7BSqYJRQ== arnau@A-MSI"
    }
  }

}
