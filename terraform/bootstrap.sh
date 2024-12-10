
# #!/bin/bash
# component=$1
# environment=$2 #dont use env here, it is reserved in linux
# #ansible --version
# #yum install python3.12-devel python3.12-pip -y
# yum install python3.12-pip.noarch -y
# #pip3.12 install ansible botocore boto3
# pip3.12 install ansible botocore boto3
# ansible-pull -U https://github.com/theppasiva/roboshop-ansible-roles-tf-1.git --version -vvv  -e component=$component -e env=$environment main-tf.yaml


#!/bin/bash
component=$1
environment=$2 #dont use env here, it is reserved in linux
app_version=$3
yum install python3.12-devel python3.12-pip -y
pip3.12 install ansible ansible-core==2.16 botocore boto3
ansible-pull -U https://github.com/theppasiva/roboshop-ansible-roles-tf-1.git  -e component=$component -e env=$environment -e app_version=$app_version main-tf.yaml

