variable "region_name" {
  type        = string
  description = "The region in which you want to deploy your stack"
  default     = "us-east4"
}

variable "zone_name" {
  type        = string
  description = "The zone in which you want to deploy your stack"
  default     = "us-east4-b"
}

variable "image_name" {
  type        = string
  description = "The image that you wnat to use for your instance deployment"
  default     = "ubuntu-os-cloud/ubuntu-minimal-2004-focal-v20200501"
}

variable "machine_size" {
  type        = string
  description = "Instance's size in terms of cpu, memory and hdd"
  default     = "f1-micro"
}

variable "vm_name" {
  type        = string
  description = "Name of the instance"
  default     = "web-server"
}

variable "public_ip_name" {
  type        = string
  description = "Public ip address of the instance"
  default     = "webserver-public-ip" 
}


variable "public_key_path" {
  type        = string
  description = "Path of the private key"
}

variable "script_path" {
  type        = string
  description = "cloud-init based script execution"
}

variable "private_key_path" {
  type        = string
  description = "Path of the private key"
}

variable "username" {
  type        = string
  description = "User name for the system login using the above key"
}
