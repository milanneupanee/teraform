resource "aws_key_pair" "dove-key" {
    key_name = "dovekey"
    public_key= file(dovekey.pub)
}

resource "aws_instance" "dove-instance"{
    ami = vars.AMIS[var.REGION]
    instance_type = "t2.micro"
    availability_zone = var.ZONE1
    key_name = aws_key_pair.dove-key.key_name
    vpc_security_groups_ids = [#sgid]
    tags = {
        Name = "dove-instance"
        Project = "dove"
    }

    provisioner "file" {
    source = "web.sh",
    destination = "/tmp/web.sh"
    }
    provisioner "remote-exec"{
        inline=[
            "chmod u+x /tmp/web.sh"
            "sudo /tmp/web.sh"
        ]

    }

    connection {
        user = var.USER
        private_key = file("dovekey")
        host = self.public_ip
    }
}

