ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
ssh-keyscan -t rsa hadoop >>  ~/.ssh/known_hosts
ssh-keyscan -t rsa localhost >>  ~/.ssh/known_hosts