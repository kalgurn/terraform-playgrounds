module "eks" {
  source = "../../../metamodules/aws/eks"
  network = {
    vpc_cidr = "10.0.0.0/16"
    subnets = {
      subnet1 : {
        cidr              = "10.0.1.0/24"
        availability_zone = "eu-central-1a"
      },
      subnet2 : {
        cidr              = "10.0.2.0/24"
        availability_zone = "eu-central-1b"
      }
    }
  }
  iam = {
    policy = {
      name           = "EKS-playground"
      description    = "Policy for a playground EKS cluster"
      action = [
      "sts:AssumeRole"]
      principals = {
        type = "Service"
        identifiers = [
          "ec2.amazonaws.com"
        ]
      }
      effect    = "Allow"
      resources = ["*"]
    }
    role = {
      name = "EKS-playground"
    }
    attachments = [
      "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
      "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController",
      "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
      "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
      "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    ]
  }
  eks = {
    name = "EKS-playground"
  }
  tags = {
    Name = "EKS-playground"
  }
}
