module "vpc" {
    #source        = "../terraform-aws-vpc-84s"
    source = "git::https://github.com/Siva3150/terraform-aws-vpc-84s.git?ref=main"

    /* project_name = "roboshop"
    environment = "dev"
    public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"] */
    project_name = var.project_name
    environment = var.environment
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs

    is_peering_required = false


}

output "vpc_id" {
    value = module.vpc.vpc_id
  
}