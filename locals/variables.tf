variable "isprod" {
  type = bool
  default = false
}

# variable "instance_names" {
#   type = list
#   default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
# }

variable "ami_id" {
  type = string
  default = "ami-010c2d0fd8c55129c"
}

variable "zone_id" {
     type = string    
    default = "Z09009163A0GN0OVQ08D2"
}

variable "domain_name" {
    default = "mohana.cloud"
}