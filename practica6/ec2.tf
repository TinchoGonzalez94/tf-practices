resource "aws_instance" "public_instance" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  # lifecycle {
  # prevent_destroy = true #No permite que se destruya el recurso
  # create_before_destroy = true # en caso de necesitar sustituirlo destruyendolo, crea el remplazo antes de destruirlo
  # ignore_changes = [ 
  #   ami #ignorar cambios si se modifica el ami 
  #  ]
  # replace_triggered_by = [ 
  #   aws_subnet.private_subnet.id #remplazar en caso de que cambie el id de la private_subnet
  # ]
  # }
}