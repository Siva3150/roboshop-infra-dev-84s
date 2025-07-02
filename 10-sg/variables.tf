variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

variable "frontend_sg_name" {
    default = "frontend"
}

variable "frontend_sg_description" {
    default = "created sg for frontend instance"
}

variable "bastion_sg_name" {
    default = "bastion"
}

variable "bastion_sg_description" {
    default = "created sg for bastion instance"
}

variable "backend_alb__sg_name" {
    default = "backend_alb"
}

variable "baclend-alb_sg_description" {
    default = "created sg for backend load balancer"
}

variable "vpn_sg_name" {
    default = "opensource_vpn"
}

variable "vpn_sg_description" {
    default = "created sg for open source vpn"
}

variable "mongodb_sg_name" {
    default = "mongodb"
}

variable "mongodb_sg_description" {
    default = "created sg for mongodb"
}

variable "redis_sg_name" {
    default = "redis"
}

variable "redis_sg_description" {
    default = "created sg for redis"
}

variable "mysql_sg_name" {
    default = "mysql"
}

variable "mysql_sg_description" {
    default = "created sg for mysql"
}

variable "rabbitmq_sg_name" {
    default = "rabbitmq"
}

variable "rabbitmq_sg_description" {
    default = "created sg for rabbitmq"
}

variable "catalogue_sg_name" {
    default = "catalogue"
}

variable "catalogue_sg_description" {
    default = "created sg for catalogue"
}

variable "mongodb_ports_vpn" {
   default = [ 22, 27017]
}

variable "redis_ports_vpn" {
    default = [22, 6379]
}

variable "mysql_ports_vpn" {
    default = [22, 3306]
}

variable "rabbitmq_ports_vpn" {
    default = [22, 5672]
}






