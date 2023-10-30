# Resource group

variable "burakvm-rg-name" {
  type = string
}
variable "burakvm-rg-location" {
  type = string
}


# Virtual Network
variable "burakvm-vnet-name" {
  type = string
}
variable "burakvm-vnet-address-space" {
  type = list(string)  
}
variable "burakvm-vnet-dns_servers" {
  type = list(string)
}


# Subnet
variable "burakvm-subnet-name" {
  type = string
}
variable "burakvm-subnet-address_prefixes" {
  type = list(string)
}


# Network Security Group
variable "burakvm-nsg-name" {
  type = string
}
variable "burakvm-nsg-sec-name" {
  type = string
}
variable "burakvm-nsg-priority" {
  type = number
}
variable "burakvm-nsg-direction" {
  type = string
}
variable "burakvm-nsg-access" {
  type = string
}
variable "burakvm-nsg-protocol" {
  type = string
}
variable "burakvm-nsg-source-port-range" {
  type = string
}
variable "burakvm-nsg-destination-port-range" {
  type = string
}
variable "burakvm-nsg-source-address-prefix" {
  type = string
}
variable "burakvm-nsg-destination-address-prefix" {
  type = string
}


# Network Interface Card
variable "burakvm-nic-name" {
  type = string
}
variable "burakvm-nic-ip-name" {
  type = string
}
variable "burakvm-nic-ip-allocation" {
  type = string
}


# Public IP
variable "burakvm-public-ip-name" {
  type = string
}
variable "burakvm-public-ip-allocation-method" {
  type = string
}


# Virtual Machine (Windows)

variable "burakvm-windows-name" {
  type = string
}
variable "burakvm-windows-size" {
  type = string
}
variable "burakvm-windows-user" {
  type = string
}
variable "burakvm-windows-pass" {
  type = string
}
variable "burakvm-windows-caching" {
  type = string
}
variable "burakvm-windows-storage-acc-type" {
  type = string
}
variable "burakvm-windows-publisher" {
  type = string
}
variable "burakvm-windows-offer" {
  type = string
}
variable "burakvm-windows-sku" {
  type = string
}
variable "burakvm-windows-vrsn" {
  type = string
}


