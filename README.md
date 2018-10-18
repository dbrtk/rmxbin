# rmxbin

Rmxbin copies files (corpora, matrices) from the server that contains the data to the server that implements Non-negative Matrix Factorisation. It uses rsync to copy files over the ssh network. In order to make it work, an ssh key is required in a location accessible to httpd (apache) or any other server. In the case of httpd, ssh keys can be accessed under `/var/www/.ssh`; that's where rmxbin expects to find them.


Generating a key for the apache user:
```
ssh-keygen -t rsa -b 4096 -u apache
```
In this case a location is chosen by default (i.e. `/usr/share/httpd/.ssh/id_rsa`). The location of the ssh key will need to be updated in the scripts.

Rmxbin is used by nlp (https://github.com/dbrtk/nlp), hence it should be on the same server, as the one that contains NLP. The path to rmxbin should be updated in the configuraion file in nlp.
