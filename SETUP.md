
## Generate ssh key
1. PuTTYgen SSH-2 RSA Key with 2048 bits
1. Save public key and private key (ppk)
1. Copy the text field of Public Key to authorized_keys on remote server
1. Set Putty Configuration "Connection -> Data, Auto-login username"
1. Set Putty Configuration "Connection -> SSH -> Auth, Private key file"
1. On remote server
    1. chmod 700 ~/.ssh
    1. chmod 600 ~/.ssh/authorized_keys
    1. chown $USER:$USER ~/.ssh -R
    1. change /etc/ssh/sshd_config so it contains AuthorizedKeysFile %h/.ssh/authorized_keys
    1. sudo service ssh restart

