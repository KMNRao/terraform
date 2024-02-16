variable "instance_names" {
  type = map
  default = {
    mongodb = "t3.small"
    redis = "t2.micro"
    mysql = "t3.small"
    rabbitmq = "t2.micro"
    catalogue = "t2.micro"
    user = "t2.micro"
    cart = "t2.micro"
    shipping = "t3.small"
    payment ="t2.micro"
    dispatch = "t2.micro"
    web = "t2.micro"
  }
}

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