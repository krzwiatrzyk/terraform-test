resource "local_file" "foo" {
    content  = templatefile("templates/user-form.yaml.tpl", var.user_vars)
    filename = "output/user-form.yaml"
}

module "payload_1" {
  source = "./modules/jq-get-data"

  payload = {
    data = "this is payload data"
  }
  
}

module "payload_2" {
  source = "./modules/jq-get-data"

  payload = {
    data = "this is another payload data"
  }
  
}