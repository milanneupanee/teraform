/*
we have instance.tf file where the information about the provider is placed.

we have providers.tf where the information about the provider is placed

vars.tf for the variables

teraform.tfvars for variables

Example. 
providers.tf
provider "aws" {
    region= var.region //region is the variable mentioned below
}

vars.tf
variable region{ //variable name region and its value is in defaults
    default="us-east-1"
}

#################################################
write providers.tf
write vars.tf
write instance.tf
#################################################
*/