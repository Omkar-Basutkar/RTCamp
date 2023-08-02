# RTCamp
the shellscript file be used for automation.
In which,
docker & dockercompose will be installed in server if not available & upgraded if available.
docker will start and will be started everytime server starts.
script will aslo build and run docker containers in LAMP stack where PHP,Nginx & sql container will be created. 
also run docker-compose-file provided which has wordpress and mysql.
domain will be added which is configured in /etc/hosts.
user just write name to access page.
to check page curl is used.
after the proccess of creation and testing it will destroy using containers and files after wait of 5 minutes.
and local files will be deleted after 2 mins deletetion on containers.

Terraform can also be used for building infrastructure which has included .sh file. which can be runed directly after importing & installing terraform in linux.(amazon linux installation file provided)


steps 
1. install git and terraform (optional) [terraform file provided to launch server]
2. import repository (includes docker file docker compose file .sh file .tf file & file for instalation of terraform) you can import directly in ec2 form github and run file's
syntax: ./shellscript.sh
If error change user permission of .sh file for execution of file.
for terraform steps (for full automation)
in the folder teraform file is imported do (after installing terraform)
1. terraform init
2. terraform validate
3. terraform plan
4. terraform apply
