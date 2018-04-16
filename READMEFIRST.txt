My apologies for the late response, I had left the province for the week to spend time with family and came back late Sunday.
Attached are my scripts for CloudFormation (created a basic web server), sample script to deploy webservers with elb, and a bash script to ssh into a server and check if nginx is running.

In the CloudFormation script (tb-test1), I created a basic t2.micro web server using an AMI image. It is running with the default storage of 10GBs and it creates a security group with an ingress opening port 22 TCP (SSH) and open Egress rule (I did add some rules through the console after). Nginx and PHP were installed onto the web server and it only accepts SSL connections with HTTP redirection (disabled HTTP access on nginx). The text file can be viewed at https://ec2-34-239-110-162.compute-1.amazonaws.com/version.txt
For this example, I used a self signed cert, please use Firefox to ignore the warning and proceed.

I created a BASH script to ssh into the server and check if the nginx service is running. If it is, it will echo that the service is running and exit, other wise it will start up the nginx service.

Initially I started off with the plan that I would create another server with ansible installed and create playbooks to install nginx and php along with executing the bash script. However I ran into issues with the ssh public key since AWS locked down their images to prevent unwanted SSH logins. I did find an article to get around this issue but haven’t tried it yet.
https://aws.amazon.com/blogs/apn/getting-started-with-ansible-and-dynamic-amazon-ec2-inventory-management/

In a production environment, it would have been best to create two web servers with the ELB loadbalancers on top. I did execute a CF stack called "tb-testelb1” just to play around with. 

Thank you for this test, it really gave me perspective on my skillset and what I need to improve on.