variable "cluster_name" {
  description = "This is the AKS cluster name"
  default= "inap-eastus2"
  type= string 
}
variable "location" {
  description = "This is location name"
  default= "eastus2"
  type= string
}
variable "resource_group_name" {
  description = "This is RG name"
  default= "INAP-eastus2"
  type= string
}
variable "dns_prefix" {
  description = "This is dns_prefix name "
  default = "3pc.att.com"
  type= string
}
variable "kubernetes_version" {
  description = "This is the version details"
  default = "1.22.2"
  type= string
}
variable "default_pool_name" {
  description = "This is for pool name"
  default = "INAP-pool"
  type= string
}
variable "node_count" {
  description = "The node count detail"
  default = 2
  type= number
}
variable "vm_size" {
  description = "This is the Vm size"
  default = 2
  type= number
}
variable "os_disk_size_gb" {
  description = "This is the disk size "
  default = 50
  type= number
}

variable "vnet_subnet_id" {
  description = "This is the subnet id name "
  default = "INAP-eastus2"
  type= string
}

variable "max_pods" {
  description = "Number of max pods"
  default = 6
  type= number
}
variable "min_count" {
  description = "Number of min count"
  default = 1
  type= number
}
variable "max_count" {
  description = "Number of maximum"
  default = 3
  type= number
}
variable "enable_log_analytics_workspace" {
  description = "need to update the name"
  default = 1
  type= number
}
variable "cluster_log_analytics_workspace_name" {
  description = "This is LAW name"
  default = "INAP-eastus2"
    type= string
}
variable "log_analytics_workspace_sku" {
  description = "need to update the name"
  default="PerGB2018"
  type= string
}
variable "log_retention_in_days" {
  description = "Number of log retention days"
  default =30 
  type= number
}
variable "default_pool_type" {
  description = "need to update the name"
  default = "Standard_D2s_v3"
  type= string
}

variable "created_by"{
    description = "This is the tag for resource"
    type = string
}
variable "env"{
    description = "This is the tag for resource"
    type = string
}
variable "automated_by"{
    description = "This is the tag for resource"
    type = string
}
variable "contact_dl"{
    description = "This is the tag for resource"
    type = string
}
variable "mots_id"{
    description = "This is the tag for resource"
    type = number
}
variable "itrack"{
    description = "This is the tag for resource"
    type = string
}
