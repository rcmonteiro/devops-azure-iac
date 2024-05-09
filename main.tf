resource "azurerm_resource_group" "rg" {
  name     = "devops-rocketseat-rcmonteiro-hmg"
  location = "brazilsouth"
  tags = {
    IaC = true
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "rocketseat-rcmonteiro-vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]

  tags = {
    IaC = true
  }
}