resource "aws_s3_bucket" "data" {
  bucket = "data"

  count = "${terraform.workspace == "initial" ? 0 : 1}"

  tags = {
    Name        = "Data Bucket"
    Environment = "Dev"
    Workspace   = "${terraform.workspace}"
    WorkspaceDefault = "${terraform.workspace == "default" ? true : false}"
  }
}