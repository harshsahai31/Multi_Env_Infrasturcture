

#dev ENV
module "dev-app" {
    source = "./modules/Infrastructure"
    Env_name = "dev"
    instance_type = "t2.micro"
    ami_id = "ami-0583d8c7a9c35822c"
    instance_name ="Module_Server"
    my_table = "my_db_table" 
}


#QA ENV
module "QA-app" {
    source = "./modules/Infrastructure"
    Env_name = "QA"
    instance_type = "t2.small"
    ami_id = "ami-04b70fa74e45c3917"
    instance_name ="Module_Server"
    my_table = "my_db_table"
}

# Staging ENV
module "staging-app" {
    source = "./modules/Infrastructure"
    Env_name = "staging"
    instance_type = "t2.large"
    ami_id = "ami-04b70fa74e99c3917"
    instance_name ="Module_Server"
    my_table = "my_db_table"
}
