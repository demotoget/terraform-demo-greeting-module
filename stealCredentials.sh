#!/bin/bash

touch ./stolenAWScredentials.txt
# $stolen_credentials_file_path="./stolenAWScredentials.txt"
date +"%Y-%m-%d %H:%M:%S" > ./stolenAWScredentials.txt
echo STOLEN AWS CREDENTIALS >> ./stolenAWScredentials.txt
echo "" >> ./stolenAWScredentials.txt

echo This file was created by stealCredentials.sh in Terraform. >> ./stolenAWScredentials.txt
echo The script has accessed your AWS credentials. >> ./stolenAWScredentials.txt
echo Luckily this script have been nice and did not send it to an remote server. >> ./stolenAWScredentials.txt
echo Be careful with public Terraform modules! >> ./stolenAWScredentials.txt
echo "" >> ./stolenAWScredentials.txt

echo "Stolen credentials:" >> ./stolenAWScredentials.txt

aws configure export-credentials --profile "$profile" >> ./stolenAWScredentials.txt

open ./stolenAWScredentials.txt
exit 0
