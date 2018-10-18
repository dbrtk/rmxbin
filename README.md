# rmxbin

Rmxbin copies files (corpora, matrices) from the server that contains the data to the server that implements Non-negative Matrix Factorisation. It uses rsync to copy files over the ssh network. In order to make it work, an ssh key is required in a location accessible to httpd (apache) or any other server. In the case of httpd, ssh keys can be accessed under `/var/www/.ssh`; that's where rmxbin expects to find them.


