# EC2-Setup-Scripts

rsa-ec2 "pem file" "ec2 server ip"
  pushes local public key to server for push local ec2
  and pushes git keys for ec2-github communication
  
To setup github ssh key on ec2 run on server:
  chmod 644 .ssh/sf_id_rsa.pub && chmod 600 .ssh/sf_id_rsa
  eval "$(ssh-agent -s)" && ssh-add ~/.ssh/sf_id_rsa


