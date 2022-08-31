variable "ins_type" {
    type = string
}

variable "tag_name" {
  type = list(any)
}

variable "bucket_names" {
  type = map(any)
}