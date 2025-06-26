module "frontend" {
    source = "git::https://github.com/Siva3150/terraform-aws-securitygroup-84s.git?ref=main"


    project = var.project
    environment = var.environment
    sg_name = var.frontend_sg_name
    sg_description = var.frontend_sg_description
    vpc_id = local.vpc_id
}

module "bastion" {
    source = "git::https://github.com/Siva3150/terraform-aws-securitygroup-84s.git?ref=main"


    project = var.project
    environment = var.environment
    sg_name = var.bastion_sg_name
    sg_description = var.bastion_sg_description
    vpc_id = local.vpc_id
}

module "backend_alb" {
    source = "git::https://github.com/Siva3150/terraform-aws-securitygroup-84s.git?ref=main"


    project = var.project
    environment = var.environment
    sg_name = var.backend_alb__sg_name
    sg_description = var.baclend-alb_sg_description
    vpc_id = local.vpc_id
}

#bastion accepting connections from my laptop
resource "aws_security_group_rule" "bastion_laptop" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = module.bastion.sg_id
}

#backend alb accepting connections from bastion host on port no 80
resource "aws_security_group_rule" "backend_alb_bastion" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  source_security_group_id = module.bastion.sg_id
  security_group_id = module.backend_alb.sg_id
}