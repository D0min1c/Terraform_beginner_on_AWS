# EC2 Module
module "ec2_instance" {
  source          = "./modules/aws/ec2"
  depends_on_list = [module.network]
  key_name        = var.key_name

  ec2_instance = {
    test-web-01 = {
      image                       = "ami-0b276ad63ba2d6009"
      subnet_id                   = module.network.public_subnets_ids[0]
      private_ip                  = "10.0.10.11"
      instance_type               = "t2.micro"
      associate_public_ip_address = "true"
      root_block_device           = [{ volume_size = "100", volume_type = "gp2" }]

      #     vpc_security_group_ids= [""]
    }
    #    test-web-02 = {
    #      image                       = "ami-0b276ad63ba2d6009"
    #      subnet_id                   = module.network.public_subnets_ids[1]
    #      private_ip                  = "10.0.11.11"
    #      instance_type               = "t2.micro"
    #      associate_public_ip_address = "true"
    #      root_block_device           = [{volume_size = "100", volume_type = "gp2"}]
    #
    #      #     vpc_security_group_ids= [""]
    #    }

    #####
  }
}
