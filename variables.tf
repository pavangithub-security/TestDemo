# Variable block
variable "ami_id" {
  description = "Provide ami ID of ubuntu server 24.04 LTS from Virginia"
  type        = string
  default     =  "ami-04cdc91e49cb06165" # "ami-0427090fd1714168b" # "ami-04a81a99f5ec58529" 
}

variable "instance_type" {
  description = "Provide instance type from t2 family"
  type        = string
  default     = "t3.medium"

}

variable "ec2_tags" {
  description = "Provide tags for EC2 Instance"
  type        = map(string)
  default = {
    "Type" = "WebServer"
  }
}

#Locals block --> local values

locals {
  common_tags = {
    "Environment" = "Production"
    "Platform"    = "IaC_Terraform"
  }
}