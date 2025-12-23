#################################
# Resource Group
#################################
rg_name  = "rg-devopsexpress0302"
location = "centralindia"

#################################
# Virtual Network
#################################
vnet_name     = "vnet-devopsexpress"
address_space = ["10.0.0.0/16"]

#################################
# Frontend Subnet
#################################
frontend_subnet_name      = "fsubnet"
frontend_address_prefixes = ["10.0.1.0/24"]

#################################
# Backend Subnet
#################################
backend_subnet_name      = "bsubnet"
backend_address_prefixes = ["10.0.2.0/24"]

#################################
# Bastion Subnet
#################################
bastion_subnet_name      = "AzureBastionSubnet"
bastion_address_prefixes = ["10.0.3.0/24"]

#################################
# Frontend NIC
#################################
frontend_nic_name                      = "frontendnic"
frontend_ip_configuration              = "internal"
frontend_private_ip_address_allocation = "Dynamic"

#################################
# Backend NIC
#################################
backend_nic_name                      = "backendnic"
backend_ip_configuration              = "internal"
backend_private_ip_address_allocation = "Dynamic"

#################################
# Frontend VM
#################################
frontend_vm_name        = "frontend-vm-01"
frontend_size           = "Standard_A1_v2"
frontend_admin_username = "azureuserf"
frontend_admin_password = "FP@ssw0rd123!"

#################################
# Backend VM
#################################
backend_vm_name        = "backend-vm-01"
backend_size           = "Standard_A1_v2s"
backend_admin_username = "azureuserb"
backend_admin_password = "BP@ssw0rd123!"


#################################
# VM Image Info (common)
#################################
publisher            = "Canonical"
offer                = "0001-com-ubuntu-server-jammy"
sku                  = "22_04-lts"
caching              = "ReadWrite"
storage_account_type = "Standard_LRS"

# Image Versions
fvm_image_version = "latest"
bvm_image_version = "latest"


#################################
# Public IPs
#################################

# Frontend Public IP
frontend_pip_name          = "frontend_pip"
frontend_allocation_method = "Static"

# Backend Public IP
backend_pip_name          = "backend_pip"
backend_allocation_method = "Static"


# --------------------
# Key Vault
# --------------------
# kv_name         = "kv-3tier-dev-001"
# # tenant_id       = "8810bad7-7f76-4bba-8b17-d6d297d7bdd7"
# # object_id       = "6c9d9d03-1a35-44e2-b18e-eb8641ff4cbd"
# subscription_id = "2a238ca4-a95b-43d2-846c-1618b53c6203"


#################################
# SQL Server
#################################
sql_server_name = "sql-devopsexpress-01"

sql_admin_username = "sqladminuser"
sql_admin_password = "Sql@Passw0rd123!" # 🔐 Key Vault me store hoga

# Disable public access (best practice)
sql_public_network_access_enabled = false


#################################
# SQL Database
#################################
sql_db_name        = "appdb"
sql_sku_name       = "Basic"
sql_max_size_gb    = 2
sql_zone_redundant = false

