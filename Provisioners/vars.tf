variable REGION {
    default = "us-east-2"
}

variable ZONE1{
    default = "us-east-2a"
}

variable AMIS {
    type = map 
    default = {
        us-east-2 = "#amikey"
        us-east-1 = "#amikey"
    }
}

variable USER{
    default = "ec2-user"
}