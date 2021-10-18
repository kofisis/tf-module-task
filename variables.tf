variable "user" {
    type = list
    default = ["s3_user"]
    description = "to create an IAM user for the user specified above"
}
  
variable "region" {
    default = "us-east-1"
    description = "To specify the region for the infrastructure"
  
}

variable "bucket-name" {
    default = "ergo-task-1"
    description = 
  
}
