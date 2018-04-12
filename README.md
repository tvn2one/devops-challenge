DevOps Challenge
==========================

# Goal

Script the creation of a web server, and a script to check the server is up. Use Any Tools/Languages you like!

# Prerequisites

You will need an AWS account. Create one if you don't own one already. You can use free-tier resources for this test.

# The Task

You are required to set up a new server in AWS. It must:

* Be publicly accessible.
* Run Nginx.
* Serve a `/version.txt` file, containing only static text representing a version number, for example:

```
1.0.6
```

# Mandatory Work

* Fork this repository.
* Provide details on the infrastructure required, and how you set them up
* Provide any scripts you used and details on how to run said scripts.
* Provide a script that can be run periodically (and externally) to check if the server is up and serving the expected version number. Use your scripting language of choice.
* Provide us IAM credentials to login to the AWS account. If you have other resources in it make sure we can only access what is related to this test.

Give our account 'ThaFuzz (Tim Furzer)' access to your fork, and send us an email when you’re done. Feel free to ask questions if anything is unclear, confusing, or just plain missing.

# Choose at least 4, more if you please

Please complete at least 4 of the below. If you're having too much fun - feel free to do as many as you want!

* Use a CloudFormation template or Terraform to set up the server.
* Use Chef or Ansible to bootstrap the server.
* Use Mulitple Load Balanced Servers
* Run Nginx inside a Docker container.
* Make the checker script SSH into the instance, check if Nginx is running and start it if it isn't.
* Install an application server behind NGINX (NodeJS, Rails, Java..etc)
* Serve version via REST endpoint (eg GET /VERSION returns 1.0.6) instead of version.txt
* Leverage AWS Directory Service or Active Directory in some manner
* Have your application accept only SSL connections
