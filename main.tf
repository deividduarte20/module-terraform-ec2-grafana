module "ec2-grafana" {
  source                 = "./modules/ec2"
  
}

module "sg-tf" {
  source = "./modules/sg-tf"
}