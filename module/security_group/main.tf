# Creating Security Group for EKS cluster
resource "aws_security_group" "Project_sg" {
  name = var.sg_name
  description = "To provide access to local"
  vpc_id = var.vpc_id
  
  
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "SSH access to local"    
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "HTTP access to local"    
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = {
    Name = var.sg_tag_name
    env = var.env_name
  }

}
