resource "aws_instance" "web" {
    #count = 11 #count.index is a special variable given by terraform
    count = length(var.instance_names)
    ami   = var.ami_id #devops-practice
    instance_type = local.instance_type
    #instance_type = var.instance_names == "MongoDB" ? "t3.small" : "t2.micro"
    # vpc_security_group_ids = [aws_security_group.roboshop-all.id] # this means list
    tags = {
        Name = var.instance_names[count.index]
    }
}

resource "aws_route53_record" "www" {
  count    = length(var.instance_names)
  zone_id  = var.zone_id
  name     = "${var.instance_names[count.index]}.${var.domain_name}" #interpolation
  type     = "A"
  ttl      = 1
  records  = [local.ip]
}
