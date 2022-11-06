data "jq_query" "data" {
    data = jsonencode(var.payload)
    query = ".data"
}