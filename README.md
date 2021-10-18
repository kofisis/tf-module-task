# tf-module-tasks

This module creates an s3 bucket and an IAM user who is assigned the permission to
get & put objects in the S3 bucket created
~~~ 
Usage 

module "s3bucket" {
    source = "git::https://github.com/kofisis/tf-module-task"
    
    name: "name of user to create"
    bucket-name= "name of the bucket to create"
  
}
~~~
