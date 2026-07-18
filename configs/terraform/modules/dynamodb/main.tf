resource "aws_dynamodb_table" "ledger" { name = "ledger" billing_mode = "PAY_PER_REQUEST" hash_key = "id" attribute { name = "id" type = "S" } }
