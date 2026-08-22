@echo off
title AWS Terraform Deploy
echo ==========================================
echo   AWS Terraform - Enter New Credentials
echo ==========================================
echo.

set /p ACCESS_KEY=Enter new AWS Access Key ID: 
set /p SECRET_KEY=Enter new AWS Secret Access Key: 

echo.
echo Setting credentials and running Terraform...
echo.

set AWS_ACCESS_KEY_ID=%ACCESS_KEY%
set AWS_SECRET_ACCESS_KEY=%SECRET_KEY%

terraform init
terraform apply -auto-approve

echo.
echo Done!
pause