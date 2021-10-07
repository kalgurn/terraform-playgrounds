# EXAMPLE VARIABLES
network = {
  vpc_cidr    = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
}

iam = {
  policy = {
    name           = "eks-policy-example"
    description    = "example"
    action = [
      "ec2:Describe*",
    "asdasd:asdasd"]
    effect    = "Allow"
    resources = ["*"]
  }
  role = {
    name = "eks-playground-role"
  }
  attachments = [
    "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
    "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  ]

}

eks = {
  name = "example"
}

tags = {
  Name = "EKS-playground-example"
}