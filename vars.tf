variable "image_id" {
  description = "Image id"
  default = "ami-b63769a1"
}


variable "aws_region" {
  description = "AWS Region where resources will be created"
  default = "us-east-1"
}

variable "aws_key" {
 description = "Ec2 instance key"
 default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDaj8nDzZrLXtfXpg3Uo71wrTfgVPMMLLdPRPPjj8hD1vRoAhkXpdluv4rDYJ6YucRZp7TGcnU2X6DaaEKMUayd7YAN99pf3v9Hm13n/dGc6rJZDTlu9jxaUuJIfSYQv4I7F/ZtixSsqYG1QAIw6KaRWhNO7OvfSMehMn0/4wVTS6fDJuCmo7MlFDU/KidRv3TT5sz+cc+OcYMUuczNtub3BSu+5x1sLLBQtYbntDs1oCAkJJ1yblE74dQMsNduC8fdFsRIJyRGGyQjCPB9gfImBlQu+zGgkgPmi2YEA1/x96v2jo6+L3ZIoFrpkmzuV8dGmmOrpEIEZZtKmi8DxP8L root@lap-am0044476.bccs.hutch.co.id"
}

variable "accesskey" {
 description = "Access Key"
 default = "AKIAJI3UD6V4AFGI5L7A"

}

variable "secretkey" {
 description = "Secret Key"
 default = "KHq2dSB4xtWbjNDcAZ0PzfBkDtXM7kFhpCSasOav"

}
