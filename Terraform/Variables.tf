variable "subscription_id" {
  default = "59458d9e-f255-4803-ac69-b6629a8a0b02"
}
variable "tenant_id" {
  default = "40a841d4-ff74-47f7-826b-bfa26dc97d4a"
}

#RG
variable "azurerm_resource_group" {
  default  = "scb-nacha-preprd-rg"
}
#Location
variable "location" {
  default  = "eastus"
}
#username
variable "admin_username" {
  default  = "scbnpreprdadmin"
}
#tags
variable "tags" {
  type = map
  default = {
    "Customer" = "SCB"
    "Department" = "Prod-Support"
	  "Stream" = "NACHA"
    "Environment" = "Preprod"
	  "Customer Type" = "PAAS"
	#"Mode of Provisioning" = "Terraform"
  }
}

#Image

variable "Redhat8v2_source_image_id" {
default  ="/subscriptions/59458d9e-f255-4803-ac69-b6629a8a0b02/resourcegroups/cloud_internal/providers/Microsoft.Compute/galleries/paas_shared_images/images/CentOS/versions/0.0.1"
}

#Public Key
variable "ansiblepublickey" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCLtIcTyd13OAOTnDBs1ikMrKSg49PMu/5vZIV/UCErBJnPcaviZG8492Durv0kKXfAnJhhck8hAHscS9po1yTX69Z7D7FPDRnxWy5jAuLpE/ochxJ1GavuA6DEt8gzgDvgsAfZDlDCsssdVIWJLAGyt3WI5fh7oyA+msdRu3kGgWxQWRMmRYiQz9qNL+sFqB1PshrhnbmxIQZJZEQeMZ5sbnROv+7t4qiUrGBSLvXdpE6On0MS53n5PAwsfasz+gT4qBhyab3AHq+xjXHs2GMfEj55KCoXveL6vMY0brbvut5TxsGvF57LDbEohuEGNtPlrzTpSvhGKksSBpCvlZe7 imported-openssh-key"
}

#1#appvm1

variable "appvm1_hostname" {
  default  = "scbnpreprdappvm1"
}
variable "appvm1_ipaddress" {
  default  = "10.50.2.6"
}
variable "appvm1_osdisk" {
  default  = "32"
}
variable "appvm1_size" {
  default  = "Standard_B1s"
}

#2#appvm2

variable "appvm2_hostname" {
  default  = "scbnpreprdappvm2"
}
variable "appvm2_ipaddress" {
  default  = "10.50.2.7"
}
variable "appvm2_osdisk" {
  default  = "32"
}
variable "appvm2_size" {
  default  = "Standard_B1s"
}

#3#appvm1
variable "appvm3_hostname" {
  default  = "scbnpreprdappvm3"
}
variable "appvm3_ipaddress" {
  default  = "10.50.2.8"
}
variable "appvm3_osdisk" {
  default  = "32"
}
variable "appvm3_size" {
  default  = "Standard_B1s"
}

#4#appvm2
variable "appvm4_hostname" {
  default  = "scbnpreprdappvm4"
}
variable "appvm4_ipaddress" {
  default  = "10.50.2.9"
}
variable "appvm4_osdisk" {
  default  = "32"
}
variable "appvm4_size" {
  default  = "Standard_B1s"
}

#5#appvm1
variable "appvm5_hostname" {
  default  = "scbnpreprdappvm5"
}
variable "appvm5_ipaddress" {
  default  = "10.50.2.10"
}
variable "appvm5_osdisk" {
  default  = "32"
}
variable "appvm5_size" {
  default  = "Standard_B1s"
}

#6#appvm2
variable "appvm6_hostname" {
  default  = "scbnpreprdappvm6"
}
variable "appvm6_ipaddress" {
  default  = "10.50.2.11"
}
variable "appvm6_osdisk" {
  default  = "32"
}
variable "appvm6_size" {
  default  = "Standard_B1s"
}

#7#simvm1
variable "simvm1_hostname" {
  default  = "scbnpreprdsimvm1"
}
variable "simvm1_ipaddress" {
  default  = "10.50.2.12"
}
variable "simvm1_osdisk" {
  default  = "32"
}
variable "simvm1_size" {
  default  = "Standard_B1s"
}
#8#amqvm1
variable "amqvm1_hostname" {
  default  = "scbnpreprdamqvm1"
}
variable "amqvm1_ipaddress" {
  default  = "10.50.2.13"
}
variable "amqvm1_osdisk" {
  default  = "32"
}
variable "amqvm1_size" {
  default  = "Standard_B1s"
}

#9#amqvm2
variable "amqvm2_hostname" {
  default  = "scbnpreprdamqvm2"
}
variable "amqvm2_ipaddress" {
  default  = "10.50.2.14"
}
variable "amqvm2_osdisk" {
  default  = "32"
}
variable "amqvm2_size" {
  default  = "Standard_B1s"
}
