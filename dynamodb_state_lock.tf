#create a dynamodb table for locking the state file 
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
      Name = "Dynamo Terraform State Lock Table"
  }
}