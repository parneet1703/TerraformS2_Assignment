#count
resource "aws_instance" "web" {
  count = length(var.tag_name)
  ami           = "ami-090fa75af13c156b4"
  instance_type = var.ins_type

  tags = {
    Name = var.tag_name[count.index]
    owner = "parneet.kaur@cloudeq.com"
    purpose = "practice"
  }
}

#for_each
resource "aws_s3_bucket" "b1" {
  for_each = var.bucket_names
  bucket = "${each.value}"
  
  tags = {
    Name    = "Parneet-demo"
    Purpose = "AssignmentS2"
  }
}
