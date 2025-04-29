terraform {
    backend "s3" {
        bucket = "nameof s3 bucket created"
        key = "bucket id of that bucket"
        region ="us-east-2"
    }
}

# 1. teraform init
# 2. teraform validate
# 3. teraform fmt
# 4. teraform plan 
# 5. teraform apply
# it will save the teraform.tfstate file in the s3 bucket  so that we can sync with others
