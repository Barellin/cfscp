# cfscp

[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)
[![Build Status](https://travis-ci.org/J2TeaM/awesome-AutoIt.svg)](https://travis-ci.org/J2TeaM/awesome-AutoIt)
[![Creator](https://img.shields.io/badge/Creator-Barellin-blue.svg)](https://junookyo.blogspot.com/)


Cloud Foundry Tools, allow to copy a local directory to a remote CF 

This script is bases on https://docs.cloudfoundry.org/devguide/deploy-apps/ssh-apps.html#other-ssh-access

Usage:  ./cfscp.sh app-name source target

* app-name = your cf applucation
* source = folder to copy 
* target = container folder ( Should be like be /home/vcap/app )
 
 :warning: You have to specify CF_HOST='YOUR_CF_HOST' in the cfscp.sh file
