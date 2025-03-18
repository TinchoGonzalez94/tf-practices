resource "local_file" "productos"{
    content = "Lista de productos del mes proximo"
    filename = "productos.txt"
}