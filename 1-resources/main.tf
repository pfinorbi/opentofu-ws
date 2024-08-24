resource "local_file" "example" {
    content     = "${var.greeting}, World!"
    filename    = "${path.module}/example.txt"
}

data "http" "this" {
    url         = var.url 
}

resource "local_file" "todos" {
    content     = data.http.this.body
    filename    = "${path.module}/${substr(var.todos_file_name, 0, 8)}.txt"
}

resource "local_file" "other" {
    content = local_file.example.content
    filename = "${path.module}/other.txt"
}