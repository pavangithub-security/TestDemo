# Resource block
resource "aws_instance" "ec2_demo" {
  #Arguments
  # Meta Arguments
  #count         = 3
  #for_each          = toset(["us-east-1a", "us-east-1b", "us-east-1c"])
  ami           = var.ami_id
  instance_type = var.instance_type

  lifecycle {
    #create_before_destroy = true
    #prevent_destroy = true
    ignore_changes = [ ami ]
  }

  tags = merge(
    {
      "Name" = "PublicInstance"
    },
    var.ec2_tags,
    local.common_tags
  )
}