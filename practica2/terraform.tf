resource "local_file" "productos"{
    count = 3
    content = "Lista de productos del mes proximo"
    filename = "productos-${random_string.sufijo[count.index].id}.txt"
}


