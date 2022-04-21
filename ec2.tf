#this is to create the EC2 instance
resource "aws_instance" "web-1" {
    ami = var.imagename
    availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    key_name = "AWSB12-keypair"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true
    tags = {
        Name = "${var.environment}-Server-1"
        Env = var.environment
        Owner = "chandra"
    CostCenter = "ABCD"    
    }
  
}