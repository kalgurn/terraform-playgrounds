module "vpc" {
  source = "../../../modules/aws/vpc"

  cidr = lookup(var.network, "vpc_cidr", "")
  tags = var.tags
}

module "subnet" {
  for_each = lookup(var.network, "subnets", [""])
  source   = "../../../modules/aws/subnet"

  cidr              = each.value.cidr
  tags              = var.tags
  vpc_id            = module.vpc.id
  availability_zone = each.value.availability_zone
}

data "aws_iam_policy_document" "default" {
  statement {
    actions = lookup(lookup(var.iam, "policy", {}), "action", [])
    effect  = lookup(lookup(var.iam, "policy", {}), "effect", "")
    principals {
      type        = lookup(lookup(lookup(var.iam, "policy", {}), "principals", {}), "type", "")
      identifiers = lookup(lookup(lookup(var.iam, "policy", {}), "principals", {}), "identifiers", [])
    }
  }
}

module "iam_role" {
  source = "../../../modules/aws/iam_role"

  name   = lookup(lookup(var.iam, "role", {}), "name", "")
  tags   = var.tags
  policy = data.aws_iam_policy_document.default.json

}

module "iam_attachment" {
  for_each = toset(lookup(var.iam, "attachments", []))
  source   = "../../../modules/aws/iam_role_policy_attachment"

  role_name  = module.iam_role.name
  policy_arn = each.key

}

data "aws_subnet_ids" "default" {
  vpc_id = module.vpc.id

  depends_on = [module.subnet.id]
}

module "eks_cluster" {
  source = "../../../modules/aws/eks_cluster"

  name       = lookup(var.eks, "name", "")
  tags       = var.tags
  subnet_ids = data.aws_subnet_ids.default.ids
  role_arn   = module.iam_role.arn


  depends_on = [module.iam_attachment.ready]
}