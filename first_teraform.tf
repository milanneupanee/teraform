provider "aws" {
    region = "us-east-2"
    //we can insert the login credential here but it is not safe here. So we configure it using
    //aws configure in the aws cli initially
    #access_key = ""
    #secret_key = ""
}

resource "aws_instance" "intro"{
    ami ="ami_id"//copy form ec2 instance
    instance_type = "us-east-2a"
    key_name = ""//create key and give its name here
    vpc_security_group_ids = [""]//create sg and copy its id here
    tags ={
        Name = "tag name here"
        project = "Dove"
    }
}
/*
to run the scripts 
1. teraform init //you will find .teraform dir 
2. teraform validate //to do validation
3. terafom fmt //for formating, it will arrang the code in the nice format
4. teraform plan // gives the preview, like what will happen if we apply this
5. teraform apply //to apply, we can simply jump to last step
6. teraform destroy //to delete the infras

Best practice is to run plan before appply.
sometime it may delete the whole instance and make a new one. If there is RDS then all data may be lost.
It also maintain the state of instance in the terafom.tfstate file
*/