resource "aws_eip" "nat1" {
  # EIP may require IGW to exist prior to association. 
  # Use depends_on to set an explicit dependency on the IGW.
  depends_on = [aws_internet_gateway.ig-vpc_a]
}

resource "aws_eip" "nat2" {
  # EIP may require IGW to exist prior to association. 
  # Use depends_on to set an explicit dependency on the IGW.
  depends_on = [aws_internet_gateway.ig-vpc_b]
}

/* eip for provisioner  */
resource "aws_eip" "nginx_eip" {
  vpc = true
}

# Associate Elastic IP with EC2 instance
/* resource "aws_eip_association" "nginx_eip_assoc" {
  instance_id   = aws_instance.my_instance.id
  allocation_id = aws_eip.nginx_eip.id
} */
