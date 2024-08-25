variable "file_name" {
    type        = string
}

data "http" "this" {
    url         = "https://jsonplaceholder.typicode.com/todos/1"
}

resource "local_file" "todos" {
    depends_on  = [data.http.this ]
    content     = data.http.this.body
    filename    = "${var.file_name}.txt"
}