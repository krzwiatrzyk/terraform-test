output "data" {
    description = "Data from REST API payload."
    value = jsonencode(data.jq_query.data.result)
  
}