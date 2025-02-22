# Set Enviroment
variable "profile" {
  default = {
    account    = "XXXXXXXXXXX" ##change
    kname      = "AWS-테라폼" ##change
    publishing = "XXX" ##change
    team       = "AWSKRUG" ##change
    admin      = "Dominic" ## change
    env        = "DEV"  ## change
  }
}
variable "vpc_name" {
  description = "Set VPC NAME"
  default     = "terraform" ##change
}
variable "vpc_cidr" {
  description = "Set VPC CIDR"
  default     = "10.0.0.0/16" ##change
}
variable "avail_zones" {
  type    = list(any)
  default = ["ap-northeast-1a", "ap-northeast-1c"] ##changes
}
variable "public_subnet" {
  type    = list(any)
  default = ["10.0.10.0/24", "10.0.11.0/24"] ##change
}
variable "private_subnet" {
  type    = list(any)
  default = ["10.0.20.0/24", "10.0.21.0/24"] ##change
}
variable "key_name" {
  type    = string
  default = "terraform-test" ##change
}
