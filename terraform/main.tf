
variable user_vars {
  default = {
    "username": "tester",
    "id": 3
  }
}

resource "local_file" "foo" {
    content  = templatefile("templates/user-form.yaml.tpl", var.user_vars)
    filename = "output/user-form.yaml"
}