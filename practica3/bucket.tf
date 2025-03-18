resource "aws_s3_bucket" "example" {
  count  = 3
  bucket = "my-jmgonzalez-tf-example-${random_string.sufijo[count.index].id}"
  tags = {
    Owner       = "jmgonzalez"
    Environment = "test"
  }

}
