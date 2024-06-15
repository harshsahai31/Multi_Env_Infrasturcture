resource "aws_dynamodb_table" "my_app_table" {
    name = "${var.Env_name}_${var.my_table}"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "userID"
    attribute {
        name = "userID"
        type = "S"
    }
    tags = {
        Name = "batch3-app-table"
    }
}
