# cfscp
Cloud Foundry Tools

Allow to coy your a local directory to a remote CF 

This script is bases on https://docs.cloudfoundry.org/devguide/deploy-apps/ssh-apps.html#other-ssh-access

Usage:  ./cfscp.sh app-name source target

app-name = your cf applucation
source = folder to copy 
target = container folder ( Should be like be /home/vcap/app )
 
 :warning: You have to specify CF_HOST='YOUR_CF_HOST' in the script
