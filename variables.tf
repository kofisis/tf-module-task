variable "user" {
    type = list
    default = ["s3_user"]
    description = "to create an IAM user for the user specified above"
}

variable "bucket-name" {
    default = "ergo-task-1"
    description = "Name of the s3 bucket"
  
}
