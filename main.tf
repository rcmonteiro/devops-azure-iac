resource "azurerm_resource_group" "rg" {
  name      = "devops-rocketseat-rcmonteiro-hmg"
  location  = "brazilsouth"
  tags = {
    IaC = true
  }
}
