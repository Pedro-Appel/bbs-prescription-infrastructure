module "aws-prd" {
    source = "../../infra"
    instance = "t2.micro"
    region_aws = "us-east-1"
    keys = "bbs-prd"
}

output "ip-prd" {
    value = module.aws-prd.public-ip
  
}