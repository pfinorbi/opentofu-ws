variable "greeting" {
#    default     = "Hi"
    type        = string
    description = "How to great the folks"
}

variable "todos_file_name" {
    default     = "todos"
    type        = string
    description = "Filename of the todos file" 
}

variable "url" {
    default     = "https://jsonplaceholder.typicode.com/todos/1"
    type        = string
    description = "URL to call from http provider"
}