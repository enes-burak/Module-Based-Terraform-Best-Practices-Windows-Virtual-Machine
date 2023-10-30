burakvm-rg-name = "vm1"
burakvm-rg-location = "Canada East"

burakvm-vnet-name = "vnet"
burakvm-vnet-address-space = ["10.0.0.0/16"]
burakvm-vnet-dns_servers = ["10.0.0.4", "10.0.0.5"]

burakvm-subnet-name = "subnet"
burakvm-subnet-address_prefixes = ["10.0.1.0/24"]

burakvm-nsg-name = "nsg"
burakvm-nsg-sec-name = "rule1"
burakvm-nsg-priority = 100
burakvm-nsg-direction = "Inbound"
burakvm-nsg-access = "Allow"
burakvm-nsg-protocol = "Tcp"
burakvm-nsg-source-port-range = "*"
burakvm-nsg-destination-port-range = "3389" 
burakvm-nsg-source-address-prefix = "*"
burakvm-nsg-destination-address-prefix = "*"


burakvm-nic-name = "nic"
burakvm-nic-ip-name = "internal"
burakvm-nic-ip-allocation = "Dynamic"

burakvm-public-ip-name = "public-ip"
burakvm-public-ip-allocation-method = "Dynamic"

burakvm-windows-name = "burakwindows"
burakvm-windows-size = "Standard_F2"
burakvm-windows-user = "burakkahraman"
burakvm-windows-pass = "Hero1453!"
burakvm-windows-caching = "ReadWrite"
burakvm-windows-storage-acc-type = "Standard_LRS"
burakvm-windows-publisher = "MicrosoftWindowsServer"
burakvm-windows-offer = "WindowsServer"
burakvm-windows-sku = "2016-Datacenter"
burakvm-windows-vrsn = "latest"