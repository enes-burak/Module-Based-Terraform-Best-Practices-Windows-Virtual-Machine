module "burakvm-rg" {
  source = "./modules/resource_group"
  name = var.burakvm-rg-name
  location = var.burakvm-rg-location
}

module "burakvm-vnet" {
  source = "./modules/virtual_network"
  name = var.burakvm-vnet-name
  resource_group_name = module.burakvm-rg.name
  location = module.burakvm-rg.location
  address_space = var.burakvm-vnet-address-space
  dns_servers = var.burakvm-vnet-dns_servers
}

module "burakvm-subnet" {
  source = "./modules/subnet"
  name = var.burakvm-subnet-name
  location = module.burakvm-rg.location
  resource_group_name = module.burakvm-rg.name
  virtual_network_name =  module.burakvm-vnet.name
  address_prefixes = var.burakvm-subnet-address_prefixes
}

module "burakvm-nsg" {
  source = "./modules/network_security_group"
  name = var.burakvm-nsg-name
  location = module.burakvm-rg.location
  resource_group_name = module.burakvm-rg.name
  sec_name = var.burakvm-nsg-sec-name
  priority = var.burakvm-nsg-priority
  direction = var.burakvm-nsg-direction
  access = var.burakvm-nsg-access
  protocol = var.burakvm-nsg-protocol
  source_port_range = var.burakvm-nsg-source-port-range
  destination_port_range = var.burakvm-nsg-destination-port-range
  source_address_prefix = var.burakvm-nsg-source-address-prefix
  destination_address_prefix = var.burakvm-nsg-destination-address-prefix
}

module "public_ip" {
  source = "./modules/public_ip"
  name = var.burakvm-public-ip-name
  resource_group_name = module.burakvm-rg.name
  location = module.burakvm-rg.location
  allocation_method = var.burakvm-public-ip-allocation-method
}

module "burakvm-nic" {
  source = "./modules/network_interface_card"
  name = var.burakvm-nic-name
  location = module.burakvm-rg.location
  resource_group_name = module.burakvm-rg.name
  ip_config_name = var.burakvm-nic-ip-name
  subnet_id = module.burakvm-subnet.subnet_id
  private_ip_address_allocation = var.burakvm-nic-ip-allocation
  public_ip_address_id = module.public_ip.public-ip-id
}

module "burakvm-windows" {
  source = "./modules/virtual_machine"
  name = var.burakvm-windows-name
  resource_group_name =  module.burakvm-rg.name
  location =  module.burakvm-rg.location
  size =  var.burakvm-windows-size
  admin_username =  var.burakvm-windows-user
  admin_password =  var.burakvm-windows-pass
  network_interface_ids = module.burakvm-nic.nic_id
  caching = var.burakvm-windows-caching
  storage_account_type = var.burakvm-windows-storage-acc-type
  publisher = var.burakvm-windows-publisher
  offer = var.burakvm-windows-offer
  sku = var.burakvm-windows-sku
  vrsn = var.burakvm-windows-vrsn
}
