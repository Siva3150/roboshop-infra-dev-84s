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



