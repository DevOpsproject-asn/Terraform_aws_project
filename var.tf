variable "aws_region" {
  type        = string
  default     = "ap-south-1"
  description = "The AWS Region In Which Terrform Will Manage The Infrastrucre"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "VPC CIDR"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.0.0/19", "10.0.32.0/19", "10.0.64.0/19"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.96.0/19", "10.0.128.0/19", "10.0.160.0/19"]
}

variable "project_name" {
  type    = string
  default = "Demo-EKS"
}
variable "common_tags" {
  type = map(string)
  default = {
    "Environmet" = "Dev"
    "Owner"      = "AvinnaEKSproject"
  }
}

variable "desired_size" {
  type = number
  default = 2
}

variable "min_size" {
  type = number
  default = 2
}

variable "max_size" {
  type = number
  default = 10
}