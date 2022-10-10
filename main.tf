/*
locals {
  sg-id = module.sg-tf.sg-tf
}
*/
module "ec2-grafana" {
  source = "./modules/ec2"
  sg-tf  = module.sg-tf.sg-tf
}

module "sg-tf" {
  source = "./modules/sg-tf"
}