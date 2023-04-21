module "aws-dev" {
    source = "../../infra"
    instance = "t2.micro"
    region_aws = "us-east-1"
    keys = "bbs-dev"
}

output "ip-dev" {
    value = module.aws-dev.public-ip
  
}