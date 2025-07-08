module "component" {
    for_each = var.components
    source = "git::https://github.com/Siva3150/terraform-aws-roboshop-84s.git?ref=main"
    component = each.key
    rule_priority = each.value.rule_priority

    
}