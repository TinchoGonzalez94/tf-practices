resource "aws_instance" "public_instance" {
  ami           = "ami-08b5b3a93ed654d19"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  key_name = data.aws_key_pair.key.key_name
  # lifecycle {
    # prevent_destroy = true
    # create_before_destroy = true
    # ignore_changes = [ 
    #   ami #ignorar cambios si se modifica el ami 
    #  ]
    # replace_triggered_by = [ 
    #   aws_subnet.private_subnet.id #remplazar en caso de que cambie el id de la private_subnet
    # ]
  # }
}